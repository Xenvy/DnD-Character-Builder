using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IRaceData
{
    Task<Race?> GetRace(int id);
    Task<IEnumerable<Race>> GetRaces();
}