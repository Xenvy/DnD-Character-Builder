using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface ISkillData
{
    Task<Skill?> GetSkill(int id);
    Task<IEnumerable<Skill>> GetSkills();
}