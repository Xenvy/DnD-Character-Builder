using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IFeatData
{
    Task<Feat?> GetFeat(int id);
    Task<IEnumerable<Feat>> GetFeats();
    Task<IEnumerable<Feat>?> GetSubfeatByParentFeat(string parentFeat);
}