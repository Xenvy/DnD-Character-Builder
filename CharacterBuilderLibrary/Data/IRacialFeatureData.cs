using CharacterBuilderLibrary.Models;

namespace CharacterBuilderLibrary.Data;

public interface IRacialFeatureData
{
    Task<IEnumerable<RacialFeature>?> GetFeaturesByRaceId(int raceId);
	Task<IEnumerable<RacialFeature>?> GetSubfeaturesByParentFeature(string parentFeature);
}