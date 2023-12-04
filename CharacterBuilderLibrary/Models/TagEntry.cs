
namespace CharacterBuilderLibrary.Models;

public class TagEntry
{
    public TagEntry(string tag, List<string> arguments)
    {
        Tag = tag;
		Arguments = arguments;
    }

    /// <summary>
    /// Represents a tag of a feature, to be interpreted by the parser on the character sheet.
    /// </summary>
    public string? Tag { get; set; }

	/// <summary>
	/// Represents a set of constraints or options coming with the tag.
	/// </summary>
	public List<string>? Arguments { get; set; } = new();

	/// <summary>
	/// Stores information about an item selection made with the tag, if any.
	/// </summary>
	public string[]? TagData { get; set; } = new string[2];
}
