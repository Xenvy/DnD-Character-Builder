using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface ICharacterClassFeatureData
{
	Task<CharacterClassFeature?> GetClassFeature(int id);
	Task<IEnumerable<CharacterClassFeature>?> GetFeaturesByClassId(int classId);
    Task<IEnumerable<CharacterClassFeature>?> GetSubfeaturesByParentFeature(string parentFeature);
}