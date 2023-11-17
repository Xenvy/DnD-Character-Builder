

namespace DnDCharacterBuilder.CharacterSheetLogic;

internal static class CharacterSheetHelpers
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
