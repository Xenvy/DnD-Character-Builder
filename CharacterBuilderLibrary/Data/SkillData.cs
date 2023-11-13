using CharacterBuilderLibrary.DbAccess;
using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

/// <summary>
/// Provides methods for accessing skill data in the database.
/// </summary>
public class SkillData : ISkillData
{
    private readonly ISqlDataAccess _db;

    public SkillData(ISqlDataAccess db)
    {
        _db = db;
    }

    /// <summary>
    /// A query returning all skills present in the database.
    /// </summary>
    /// <returns></returns>
    public async Task<IEnumerable<Skill>> GetSkills() => await _db.LoadData<Skill, dynamic>("dbo.spSkills_GetAll", new { });

    /// <summary>
    /// A database query returning a single skill by its ID.
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public async Task<Skill?> GetSkill(int id)
    {
        var result = await _db.LoadData<Skill, dynamic>("dbo.spSkills_Get", new { Id = id });

        return result.FirstOrDefault();
    }
}
