
namespace DnDCharacterBuilder.CharacterSheetLogic
{
	//Probably not needed anymore, left just in case

	public class CharacterSheetInstance
	{
		public CharacterSheetInstance() {}

		private CharacterSheet CharacterSheet = new();

		public Armor GetCharacterArmor()
		{
			return CharacterSheet.EquippedArmor;
		}

		public void SetCharacterArmor(Armor armor)
		{
			CharacterSheet.EquippedArmor = armor;
		}

		public Background GetCharacterBackground()
		{
			return CharacterSheet.Background;
		}

		public void SetCharacterBackground(Background background)
		{
			CharacterSheet.Background = background;
		}

		public List<CharacterClassFeature> GetCharacterLevelFeatures(int level)
		{
			if (CharacterSheet.CharacterClassLevels[level] is null)
			{
				return null;
			}
			return CharacterSheet.CharacterClassLevels[level].ClassLevelFeatures;
		}

		public void AddCharacterLevelFeature(CharacterClassFeature levelFeature, int level)
		{
			if (CharacterSheet.CharacterClassLevels[level] is null)
			{
				throw new Exception("Unable to add feature as target level does not exist.");
			}
			CharacterSheet.CharacterClassLevels[level].ClassLevelFeatures.Add(levelFeature);
		}

		public List<CharacterClassLevel> GetCharacterClassLevels()
		{
			return CharacterSheet.CharacterClassLevels;
		}

		public void AddCharacterClassLevel(CharacterClassLevel level)
		{
			if (CharacterSheet.CharacterClassLevels.Count < 20)
			{
				CharacterSheet.CharacterClassLevels.Add(level);
			}
			else
			{
				throw new Exception("Unable to add another level as the level limit has been reached.");
			}
		}

		public List<Feat> GetCharacterFeats()
		{
			return CharacterSheet.Feats;
		}

		public void AddCharacterFeat(Feat feat)
		{
			CharacterSheet.Feats.Add(feat);
		}

		public Race GetCharacterRace()
		{
			return CharacterSheet.Race;
		}

		public void SetCharacterRace(Race race)
		{
			CharacterSheet.Race = race;
		}

		//TODO: Put racial features somewhere

		public List<Skill> GetCharacterSkillProficiencies()
		{
			return CharacterSheet.SkillProficiencies;
		}

		public void AddCharacterSkillProficiency(Skill skill)
		{
			CharacterSheet.SkillProficiencies.Add(skill);
		}

		public List<Spell> GetCharacterLevelSpells(int level)
		{
			if (CharacterSheet.CharacterClassLevels[level] is null)
			{
				return null;
			}
			return CharacterSheet.CharacterClassLevels[level].SpellsLearned;
		}

		public void AddCharacterLevelSpell(Spell spell, int level)
		{
			if (CharacterSheet.CharacterClassLevels[level] is null)
			{
				throw new Exception("Unable to add spell as target level does not exist.");
			}
			CharacterSheet.CharacterClassLevels[level].SpellsLearned.Add(spell);
		}

		public List<Weapon> GetCharacterWeapons()
		{
			return CharacterSheet.EquippedWeapons;
		}

		public void SetCharacterWeapon(Weapon weapon, int slot, bool twoHanded)
		{
			if (slot < 0 || slot > 1)
			{
				throw new Exception("Unable to add weapon as the target slot is invalid.");
			}
			if (twoHanded)
			{
				CharacterSheet.EquippedWeapons[0] = weapon;
				CharacterSheet.EquippedWeapons[1] = weapon;
			}
			else
			{
				CharacterSheet.EquippedWeapons[slot] = weapon;
			}
		}

	}
}
