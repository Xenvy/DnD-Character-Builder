﻿using CharacterBuilderLibrary.Data;
using CharacterBuilderLibrary.Models;
using System.Diagnostics;

namespace CharacterBuilderLibrary.CharacterSheetLogic;

public static class CharacterSheetHelpers
{
    /// <summary>
    /// Filters available class levels by removing invalid selections.
    /// </summary>
    /// <param name="target"></param>
    /// <param name="filter"></param>
    /// <returns></returns>
    public static List<CharacterClassLevel> RemoveInvalidLevelSelections(this List<CharacterClassLevel> target, List<CharacterClassLevel> filter)
    {
        Dictionary<string, string> subclasses = new Dictionary<string, string>();

		foreach (var level in filter)
        {
		   target.RemoveAt(target.FindIndex(x => x.Id == level.Id));
           if(level.Subclass != "")
           {
				if (!subclasses.ContainsKey(level.BaseClass))
					subclasses.Add(level.BaseClass, level.Subclass);
		   }		
		}

		foreach (var s in subclasses)
			target.RemoveAll(x => x.BaseClass == s.Key && x.Subclass != s.Value);

		foreach (var cl in target.ToList())
            target.RemoveAll(x => x.BaseClass == cl.BaseClass && x.Level > cl.Level);      

        return target;
    }

    /// <summary>
    /// Filters available feats by removing invalid selections.
    /// </summary>
    /// <param name="target"></param>
    /// <param name="filter"></param>
    /// <returns></returns>
    public static List<Feat> RemoveInvalidFeatSelections(this List<Feat> target, List<Feat> filter)
    {
        //TODO: Leave out repeatedly selectable feats
        foreach (var level in filter)
            target.Remove(level);

        foreach (var f in target)
        {
            //TODO: Parse requirements and filter accordingly
        }

        return target;
    }

    /// <summary>
    /// Calculates and returns the amount of spell slots of each level for current character.
    /// </summary>
    /// <param name="characterSheet"></param>
    /// <returns>A 9-element array, with each element representing a number of available spell slots of (index+1) level.</returns>
    public static int[] GetSpellSlots(this CharacterSheet characterSheet)
    {
        int[] output = new int[9];
        int spellcasterLevel = 0;

        //Somewhat dirty solution for implementing obfuscated ruling on multiclass spell slots
        bool hasEKLevels = false;
        bool hasATLevels = false;

        foreach(CharacterClassLevel cl in characterSheet.CharacterClassLevels)
        {
            spellcasterLevel += cl.SpellcastingProgression is null ? 0 : cl.SpellcastingProgression.Value;

            if(cl.Subclass == "Eldritch Knight")
                hasEKLevels = true;

            if(cl.Subclass == "Arcane Trickster")
                hasATLevels = true;
        }

        if (hasEKLevels != hasATLevels)
            output = SpellSlotTable[(spellcasterLevel + 4) / 6];
        else
            output = SpellSlotTable[(spellcasterLevel / 6)];

        return output;
    }

    /// <summary>
    /// Calculates and returns the maximum available spell level for the given class level.
    /// </summary>
    /// <param name="characterClassLevel"></param>
    /// <returns>The maximum available spell level.</returns>
    public static int GetAvailableSpellLevel(this CharacterClassLevel characterClassLevel)
    {
        int output = 0;

        //TODO: Special case for warlock
        switch(characterClassLevel.SpellcastingProgression)
        {
            case 2:
                if (characterClassLevel.Level > 2)
                    output = (characterClassLevel.Level + 5) / 6;
                break;
            case 3:
                if(characterClassLevel.Level != 1)
                    output = (characterClassLevel.Level + 3) / 4;
                break;
            case 6:
                output = ((characterClassLevel.Level - 1) / 2) + 1;
                break;
            default:
                break;
        }

        return output;
    }

    /// <summary>
    /// Finds the number of new spells available to the given class level.
    /// </summary>
    /// <param name="characterClassLevel"></param>
    /// <returns>The number of available new spells.</returns>
    public static int GetNewSpellCount(this CharacterClassLevel characterClassLevel)
    {
        int output = 0;

        switch(characterClassLevel.BaseClass) 
        {
            case "Bard":
                output = BardSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Fighter":
                if (characterClassLevel.Subclass == "Eldritch Knight")
                    output = EKAndATSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Ranger":
                output = RangerSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Rogue":
                if (characterClassLevel.Subclass == "Arcane Trickster")
                    output = EKAndATSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Sorcerer":
                output = SorcererSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Warlock":
                output = WarlockSpellsLearned[characterClassLevel.Level - 1];
                break;
            case "Wizard":
                output = characterClassLevel.Level != 1 ? 2 : 6;
                break;
            default:
                break;
        }

        return output;
    }

	/// <summary>
	/// Combines and returns all learned (from class levels) spells of a specified level.
	/// </summary>
	/// <param name="level"></param>
	/// <returns></returns>
	public static List<Spell> GetAllClassSpellsByLevel(this ICharacterSheet characterSheet, int level)
	{
		var output = new List<Spell>();

		foreach (var cl in characterSheet.CharacterClassLevels)
		{
			foreach (var s in cl.SpellsLearned)
			{
				if (s.Level == level)
				{
					output.Add(s);
				}
			}
		}

		return output;
	}

	/// <summary>
	/// Parses the specified tag information into adequate changes on the character sheet.
	/// </summary>
	/// <param name="tagEntry"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public static async Task ParseTag(this ICharacterSheet characterSheet, ICharacterSheetData characterSheetData, TagEntry tagEntry)
	{
		try
		{
			switch (tagEntry.Tag)
			{
				case "spell":
					characterSheet.BonusSpells.Add(await characterSheetData.GetSpell(int.Parse(tagEntry.Arguments[0])));
					break;
				case "savingThrowProficiency":
					characterSheet.SavingThrowProficiencies.Add(tagEntry.Arguments[0].ToAbility());
					break;
				case "weaponProficiency":
					switch (tagEntry.Arguments[0])
					{
						case "single":
							var wep = await characterSheetData.GetWeapon(int.Parse(tagEntry.Arguments[1]));
							characterSheet.WeaponProficiencies.Add(wep);
							if (!characterSheet.DisplayedWeaponProficiencies.Contains($"{wep.Category} weapons") && !characterSheet.DisplayedWeaponProficiencies.Contains(wep.Name))
							{
								characterSheet.DisplayedWeaponProficiencies.Add(wep.Name);
							}
							break;
						case "multiple":
							foreach (var a in Enumerable.Range(1, tagEntry.Arguments.Count - 1))
							{
								wep = await characterSheetData.GetWeapon(int.Parse(tagEntry.Arguments[a]));
								characterSheet.WeaponProficiencies.Add(wep);
								if (!characterSheet.DisplayedWeaponProficiencies.Contains($"{wep.Category} weapons") && !characterSheet.DisplayedWeaponProficiencies.Contains(wep.Name))
								{
									characterSheet.DisplayedWeaponProficiencies.Add(wep.Name);
								}
							}
							break;
						case "simple":
							var w = await characterSheetData.GetWeapons();
							characterSheet.WeaponProficiencies.AddRange(w.Where(x => x.Category == "Simple"));
							if (!characterSheet.DisplayedWeaponProficiencies.Contains("Simple weapons"))
							{
								foreach (var d in characterSheet.DisplayedWeaponProficiencies.ToList())
								{
									if (w.Find(x => x.Name == d)?.Category == "Simple")
									{
										characterSheet.DisplayedWeaponProficiencies.Remove(d);
									}
								}
								characterSheet.DisplayedWeaponProficiencies.Add("Simple weapons");
							}
							break;
						case "martial":
							w = await characterSheetData.GetWeapons();
							characterSheet.WeaponProficiencies.AddRange(w.Where(x => x.Category == "Martial"));
							if (!characterSheet.DisplayedWeaponProficiencies.Contains("Martial weapons"))
							{
								foreach (var d in characterSheet.DisplayedWeaponProficiencies.ToList())
								{
									if (w.Find(x => x.Name == d)?.Category == "Martial")
									{
										characterSheet.DisplayedWeaponProficiencies.Remove(d);
									}
								}
								characterSheet.DisplayedWeaponProficiencies.Add("Martial weapons");
							}
							break;
						case "all":
							characterSheet.WeaponProficiencies.AddRange(await characterSheetData.GetWeapons());
							characterSheet.DisplayedWeaponProficiencies.Clear();
							characterSheet.DisplayedWeaponProficiencies.Add("Simple weapons");
							characterSheet.DisplayedWeaponProficiencies.Add("Martial weapons");
							characterSheet.DisplayedWeaponProficiencies.Add("Shield");
							break;
						default:
							break;
					}
					break;
				case "armorProficiency":
					switch (tagEntry.Arguments[0])
					{
						case "all":
							characterSheet.ArmorProficiencies.Clear();
							characterSheet.ArmorProficiencies.Add("Light armor");
							characterSheet.ArmorProficiencies.Add("Medium armor");
							characterSheet.ArmorProficiencies.Add("Heavy armor");
							break;
						case "light":
							if (!characterSheet.ArmorProficiencies.Contains("Light armor"))
							{
								characterSheet.ArmorProficiencies.Add("Light armor");
							}
							break;
						case "medium":
							if (!characterSheet.ArmorProficiencies.Contains("Medium armor"))
							{
								characterSheet.ArmorProficiencies.Add("Medium armor");
							}
							break;
						case "heavy":
							if (!characterSheet.ArmorProficiencies.Contains("Heavy armor"))
							{
								characterSheet.ArmorProficiencies.Add("Heavy armor");
							}
							break;
						default:
							break;
					}
					break;
				case "abilityImprovement":
					characterSheet.AbilityScores[tagEntry.Arguments[0].ToAbility()].Bonus += int.Parse(tagEntry.Arguments[1]);
					break;
				case "buffer":
					break;
				case "extraAttack":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag, tagEntry.Arguments[0]));
					break;
				case "damageResistance":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag, tagEntry.Arguments[0]));
					break;
				case "unarmoredDefense":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag, tagEntry.Arguments[0]));
					break;
				case "fastMovement":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					await characterSheet.UpdateSpeed();
					break;
				case "jackOfAllTrades":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "archeryStyle":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "defenseStyle":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "duelingStyle":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "twoWeaponFightingStyle":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "remarkableAthlete":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "martialArts":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "unarmoredMovement":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					await characterSheet.UpdateSpeed();
					break;
				case "dreadAmbusher":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "umbralSight":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "ironMind":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "bonusHP":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag, tagEntry.Arguments[0]));
					await characterSheet.UpdateHitPoints();
					break;
				case "draconicResilience":
					characterSheet.SpecialFeatures.Add(new SpecialFeature(tagEntry.Tag));
					break;
				case "expandedSpellList":
					break;
				default:
					break;
			}
		}
		catch (Exception e)
		{
			throw new Exception(e.Message);
		}
	}

	/// <summary>
	/// Loads the character sheet state specified by the provided reference ID.
	/// </summary>
	/// <param name="characterSheet"></param>
	/// <param name="refId"></param>
	/// <param name="characterSheetData"></param>
	/// <returns></returns>
	public static async Task LoadBuildFromRefId(this ICharacterSheet characterSheet, string refId, ICharacterSheetData characterSheetData)
	{
		// TODO: Exception handling

		string value = "";
		List<int> values = new List<int>();
		List<string> spells = new List<string>();
		Dictionary<string, List<int>> features = new();

		for (int i = 0; i < refId.Length; i++)
		{
			switch (refId[i]) 
			{
				case 'a':
					characterSheet.AbilityScores[Ability.Strength].Value += values[0];
					characterSheet.AbilityScorePoints -= values[0] switch { 6 => 7, 7 => 9, _ => values[0] };
					characterSheet.AbilityScores[Ability.Dexterity].Value += values[1];
					characterSheet.AbilityScorePoints -= values[1] switch { 6 => 7, 7 => 9, _ => values[1] };
					characterSheet.AbilityScores[Ability.Constitution].Value += values[2];
					characterSheet.AbilityScorePoints -= values[2] switch { 6 => 7, 7 => 9, _ => values[2] };
					characterSheet.AbilityScores[Ability.Intelligence].Value += values[3];
					characterSheet.AbilityScorePoints -= values[3] switch { 6 => 7, 7 => 9, _ => values[3] };
					characterSheet.AbilityScores[Ability.Wisdom].Value += values[4];
					characterSheet.AbilityScorePoints -= values[4] switch { 6 => 7, 7 => 9, _ => values[4] };
					characterSheet.AbilityScores[Ability.Charisma].Value += values[5];
					characterSheet.AbilityScorePoints -= values[5] switch { 6 => 7, 7 => 9, _ => values[5] };
					values = new List<int>();
					value = "";
					break;
				case 'b':
					characterSheet.Background = await characterSheetData.GetBackground(int.Parse(value));
					var skills = await characterSheetData.GetSkills();
					characterSheet.SkillProficiencies.Add(skills.Find(x => x.Id == characterSheet.Background.Skill1Id));
					characterSheet.SkillProficiencies.Add(skills.Find(x => x.Id == characterSheet.Background.Skill2Id));
					value = "";
					break;
				case 'r':
					characterSheet.Race = await characterSheetData.GetRace(int.Parse(value));
					var racialFeatures = await characterSheetData.GetRacialFeatures(characterSheet.Race);
					characterSheet.Race.RaceFeatures = racialFeatures;
					value = "";
					break;
				case 's':
					spells.Add(value);
					value = "";
					break;
				case 'f':
					features.Add(value, values);
					values = new List<int>();
					value = "";
					break;
				case 'w':
					characterSheet.EquippedWeapons[0] = await characterSheetData.GetWeapon(int.Parse(value));
					value = "";
					break;
				case 'v':
					characterSheet.EquippedWeapons[1] = await characterSheetData.GetWeapon(int.Parse(value));
					value = "";
					break;
				case 'm':
					characterSheet.EquippedArmor = await characterSheetData.GetArmor(int.Parse(value));
					value = "";
					break;
				case 'c':
					CharacterClassLevel classLevel = await characterSheetData.GetClassLevel(int.Parse(value));
					foreach (var s in spells)
					{
						classLevel.SpellsLearned.Add(await characterSheetData.GetSpell(int.Parse(s)));
					}
					spells = new List<string>();
					var characterClassFeatures = await characterSheetData.GetClassLevelFeatures(classLevel);
					foreach (var cf in characterClassFeatures)
					{
						await cf.FormatTags();
						foreach (var t in cf.TagEntries)
						{
							await characterSheet.ParseTag(characterSheetData, t);
						}
					}
					classLevel.ClassLevelFeatures = characterClassFeatures;
					foreach (var f in features)
					{
						var parentFeature = classLevel.ClassLevelFeatures.Find(x => x.Id == int.Parse(f.Key));
						foreach (var sf in f.Value)
						{
							var selectedFeature = await characterSheetData.GetClassLevelFeature(sf);
							classLevel.ClassLevelFeatures.Add(selectedFeature);
							if (selectedFeature.SubfeatureSelections == -1)
							{
								var subfeatures = await characterSheetData.GetLevelFeatureSubfeatures(parentFeature);
								foreach (var s in subfeatures)
								{
									await s.FormatTags();
								}
								classLevel.ClassLevelFeatures.AddRange(subfeatures);
							}
							parentFeature.SubselectionsMade.Add(selectedFeature.Id);
						}
					}
					characterSheet.CharacterClassLevels.Add(classLevel);
					features = new();
					value = "";
					break;
				case '-':
					values.Add(int.Parse(value));
					value = "";
					break;
				default:
					value += refId[i];
					break;
			}
		}

		characterSheet.BuildReferenceId = refId;
		await characterSheet.UpdateHitPoints();
		await characterSheet.UpdateSpeed();
	}

	/// <summary>
	/// Converts a short string form of character ability used in the database to the corresponding enum.
	/// </summary>
	/// <param name="tag"></param>
	/// <returns></returns>
	public static Ability ToAbility(this string tag)
    {
        switch(tag) 
        {
            case "str":
                return Ability.Strength;
            case "dex":
                return Ability.Dexterity;
            case "con":
                return Ability.Constitution;
            case "int":
                return Ability.Intelligence;
            case "wis":
                return Ability.Wisdom;
            case "cha":
                return Ability.Charisma;
            default:
                return Ability.Strength;
        }
    }

    //Spell tables
    private static int[] BardSpellsLearned = new int[] { 4, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0 };

    private static int[] EKAndATSpellsLearned = new int[] { 0, 0, 3, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0 };

    private static int[] RangerSpellsLearned = new int[] { 0, 2, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 };

    private static int[] SorcererSpellsLearned = new int[] { 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0 };

    private static int[] WarlockSpellsLearned = new int[] { 2, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 };

    private static int[][] SpellSlotTable = new int[][] { new int[]{ 0, 0, 0, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 2, 0, 0, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 3, 0, 0, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 2, 0, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 0, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 2, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 0, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 1, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 2, 0, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 1, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 0, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 0, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 1, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 1, 0, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 1, 1, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 1, 1, 0 },
                                                          new int[]{ 4, 3, 3, 3, 2, 1, 1, 1, 1 },
                                                          new int[]{ 4, 3, 3, 3, 3, 1, 1, 1, 1 },
                                                          new int[]{ 4, 3, 3, 3, 3, 2, 1, 1, 1 },
                                                          new int[]{ 4, 3, 3, 3, 3, 2, 2, 1, 1 } };
}
