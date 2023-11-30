using CharacterBuilderLibrary.CharacterSheetLogic;
using CharacterBuilderLibrary.Models;
using Microsoft.Extensions.Caching.Memory;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing all character sheet components data in the database.
/// </summary>
public class CharacterSheetData : ICharacterSheetData
{
	private readonly IArmorData _armorData;
	private readonly IBackgroundData _backgroundData;
	private readonly ICharacterClassLevelData _characterClassLevelData;
	private readonly ICharacterClassFeatureData _characterClassFeatureData;
	private readonly IFeatData _featData;
	private readonly IRaceData _raceData;
	private readonly IRacialFeatureData _racialFeatureData;
	private readonly ISkillData _skillData;
	private readonly ISpellData _spellData;
	private readonly IWeaponData _weaponData;

	private readonly IMemoryCache _cache;

	private const string armorCache = "ArmorData";
	private const string backgroundCache = "BackgroundData";
	private const string classLevelCache = "ClassLevelData";
	private const string featCache = "FeatData";
	private const string raceCache = "RaceData";
	private const string skillCache = "SkillData";
	private const string weaponCache = "WeaponData";

	public CharacterSheetData(IArmorData armorData,
							  IBackgroundData backgroundData,
							  ICharacterClassLevelData characterClassLevelData,
							  ICharacterClassFeatureData characterClassFeatureData,
							  IFeatData featData,
							  IRaceData raceData,
							  IRacialFeatureData racialFeatureData,
							  ISkillData skillData,
							  ISpellData spellData,
							  IWeaponData weaponData,
							  IMemoryCache cache)
	{
		_armorData = armorData;
		_backgroundData = backgroundData;
		_characterClassFeatureData = characterClassFeatureData;
		_characterClassLevelData = characterClassLevelData;
		_featData = featData;
		_raceData = raceData;
		_racialFeatureData = racialFeatureData;
		_skillData = skillData;
		_spellData = spellData;
		_weaponData = weaponData;
		_cache = cache;
	}

	/// <summary>
	/// Gets a single race from the database by its ID.
	/// </summary>
	/// <param name="raceId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Race> GetRace(int raceId)
	{
		try
		{
			return await _raceData.GetRace(raceId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all races present in the database.
	/// </summary>
	/// <returns>A list of all races.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Race>> GetRaces()
	{
		var output = _cache.Get<List<Race>>(raceCache);

		if (output is null)
		{
			try
			{
				output = (await _raceData.GetRaces()).ToList();
				_cache.Set(raceCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output;
	}

	/// <summary>
	/// Gets all features obtained with the specified race.
	/// </summary>
	/// <param name="race"> The race to get the features of.</param>
	/// <returns>A list of obtained features.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<RacialFeature>> GetRacialFeatures(Race race)
	{
		List<RacialFeature> output;

		try
		{
			output = (await _racialFeatureData.GetFeaturesByRaceId(race.Id)).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets all subfeatures obtained with the specified racial feature.
	/// </summary>
	/// <param name="feature"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<RacialFeature>> GetRacialSubfeatures(RacialFeature parentFeature)
	{
		List<RacialFeature> output;

		try
		{
			output = (await _racialFeatureData.GetSubfeaturesByParentFeature(parentFeature.Name)).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets a single background from the database by its ID.
	/// </summary>
	/// <param name="backgroundId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Background> GetBackground(int backgroundId)
	{
		try
		{
			return await _backgroundData.GetBackground(backgroundId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all backgrounds present in the database.
	/// </summary>
	/// <returns>A list of all backgrounds.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Background>> GetBackgrounds()
	{
		var output = _cache.Get<List<Background>>(backgroundCache);

		if (output is null)
		{
			try
			{
				output = (await _backgroundData.GetBackgrounds()).ToList();
				_cache.Set(backgroundCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output;
	}

	/// <summary>
	/// Gets a single class level from the database by its ID.
	/// </summary>
	/// <param name="classLevelId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<CharacterClassLevel> GetClassLevel(int classLevelId)
	{
		try
		{
			return await _characterClassLevelData.GetClassLevel(classLevelId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all class levels present in the database.
	/// </summary>
	/// <returns>A list of all available class levels.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<CharacterClassLevel>> GetClassLevels()
	{
		var output = _cache.Get<List<CharacterClassLevel>>(classLevelCache);

		if (output is null)
		{
			try
			{
				output = (await _characterClassLevelData.GetClassLevels()).ToList();
				_cache.Set(classLevelCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output.ToList();
	}

	/// <summary>
	/// Gets a single class level feature from the database by its ID.
	/// </summary>
	/// <param name="classFeatureId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<CharacterClassFeature> GetClassLevelFeature(int classFeatureId)
	{
		try
		{
			return await _characterClassFeatureData.GetClassFeature(classFeatureId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all features obtained with the specified level of a class. 
	/// </summary>
	/// <param name="characterClassLevel"> The class level to get the features of.</param>
	/// <returns>A list of obtained features.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<CharacterClassFeature>> GetClassLevelFeatures(CharacterClassLevel characterClassLevel)
	{
		List<CharacterClassFeature> output;

		try
		{
			output = (await _characterClassFeatureData.GetFeaturesByClassId(characterClassLevel.Id)).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets all subfeatures obtained with the specified class level feature.
	/// </summary>
	/// <param name="feature"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<CharacterClassFeature>> GetLevelFeatureSubfeatures(CharacterClassFeature parentFeature)
	{
		List<CharacterClassFeature> output;

		try
		{
			output = (await _characterClassFeatureData.GetSubfeaturesByParentFeature(parentFeature.Name)).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets all skills present in the database.
	/// </summary>
	/// <returns>A list of all skills.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Skill>> GetSkills()
	{
		var output = _cache.Get<List<Skill>>(skillCache);

		if (output is null)
		{
			try
			{
				output = (await _skillData.GetSkills()).ToList();
				_cache.Set(skillCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output;
	}

	/// <summary>
	/// Gets a single feat from the database by its ID.
	/// </summary>
	/// <param name="featId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Feat> GetFeat(int featId)
	{
		try
		{
			return await _featData.GetFeat(featId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all feats present in the database.
	/// </summary>
	/// <returns>A list of all available feats.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Feat>> GetAvailableFeats()
	{
		var output = _cache.Get<List<Feat>>(featCache);

		if (output is null)
		{
			try
			{
				output = (await _featData.GetFeats()).ToList();
				_cache.Set(featCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output;
	}

	/// <summary>
	/// Gets all subfeats obtained with the specified feat.
	/// </summary>
	/// <param name="parentFeat"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Feat>> GetSubFeats(Feat parentFeat)
	{
		List<Feat> output;

		try
		{
			output = (await _featData.GetSubfeatByParentFeat(parentFeat.Name)).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets a single spell from the database by its ID.
	/// </summary>
	/// <param name="spellId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Spell> GetSpell(int spellId)
	{
		try
		{
			return await _spellData.GetSpell(spellId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets spells of all spell groups up to the level available to the specified character class level.
	/// </summary>
	/// <param name="characterClassLevel"> The class level to get the available spells of.</param>
	/// <returns>A list of all available spells.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Spell>> GetAllSpellsByLevel(CharacterClassLevel classLevel)
	{
		List<Spell> output;

		try
		{
			output = (await _spellData.GetSpellsBySpellLevel(classLevel.GetAvailableSpellLevel())).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets all spells available to the current character's class and level, excluding already known.
	/// </summary>
	/// <param name="characterClassLevel"> The class level to get the available spells of.</param>
	/// <returns>A list of all available spells.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Spell>> GetAvailableSpells(CharacterClassLevel classLevel)
	{
		List<Spell> output;

		try
		{
			output = (await _spellData.GetSpellsBySpellListAndLevel(classLevel.BaseClass, classLevel.GetAvailableSpellLevel())).ToList();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}

		return output;
	}

	/// <summary>
	/// Gets a single weapon from the database by its ID.
	/// </summary>
	/// <param name="weaponId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Weapon> GetWeapon(int weaponId)
	{
		try
		{
			return await _weaponData.GetWeapon(weaponId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all weapons present in the database.
	/// </summary>
	/// <returns>A list of all weapons.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Weapon>> GetWeapons()
	{
		var output = _cache.Get<List<Weapon>>(weaponCache);

		if (output is null)
		{
			try
			{
				output = (await _weaponData.GetWeapons()).ToList();
				_cache.Set(weaponCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output.ToList();
	}

	/// <summary>
	/// Gets a single armor from the database by its ID.
	/// </summary>
	/// <param name="armorId"></param>
	/// <returns></returns>
	/// <exception cref="Exception"></exception>
	public async Task<Armor> GetArmor(int armorId)
	{
		try
		{
			return await _armorData.GetArmor(armorId);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}

	/// <summary>
	/// Gets all armors present in the database.
	/// </summary>
	/// <returns>A list of all armors.</returns>
	/// <exception cref="Exception"></exception>
	public async Task<List<Armor>> GetArmors()
	{
		var output = _cache.Get<List<Armor>>(armorCache);

		if (output is null)
		{
			try
			{
				output = (await _armorData.GetArmors()).ToList();
				_cache.Set(armorCache, output, TimeSpan.FromDays(1));
			}
			catch (Exception ex)
			{
				throw new Exception(ex.Message);
			}
		}

		return output;
	}
}
