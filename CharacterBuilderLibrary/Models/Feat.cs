
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents a feat a character can learn.
/// </summary>
public class Feat
{
    /// <summary>
    /// Feat ID in the database.
    /// </summary>
    public int Id { get; set; }

    /// <summary>
    /// Feat name.
    /// </summary>
    public string Name { get; set; }

    /// <summary>
    /// Feat description.
    /// </summary>
    public string? Description { get; set; }

    /// <summary>
    /// Feat ability score requirements.
    /// </summary>
    public string? Requirements { get; set; }

	/// <summary>
	/// Parent feat, if applicable (ex. Strength increase - Ability Score Improvement).
	/// </summary>
	public string? ParentFeatName { get; set; }

	/// <summary>
	/// Number of feat subselections available, if any. -1 means there are pre-set, non-selectable subfeatures.
	/// </summary>
	public int FeatSubselections { get; set; }

    /// <summary>
    /// Indicates if the feat can be taken multiple times.
    /// </summary>
    public bool CanTakeMultiple { get; set; }

	/// <summary>
	/// Additional information used to update the character's sheet (extra attack, proficiencies, etc.).
	/// </summary>
	public string? Tags { get; set; }

	/// <summary>
	/// Tag data formatted in a way to be handled by tag parser.
	/// </summary>
	public List<TagEntry> TagEntries { get; set; } = new();

	public async Task FormatTags()
	{
		await Task.Run(() =>
		{
			if (!string.IsNullOrEmpty(Tags))
			{
				foreach (var tag in Tags.Split('|'))
				{
					var tagArgs = tag.Split(',').ToList();
					string tagHeader = tagArgs[0];
					tagArgs.RemoveAt(0);
					TagEntries.Add(new TagEntry(tagHeader, tagArgs));
				}
			}
		});
	}
}
