using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IBackgroundData
{
    Task<Background?> GetBackground(int id);
    Task<IEnumerable<Background>> GetBackgrounds();
}