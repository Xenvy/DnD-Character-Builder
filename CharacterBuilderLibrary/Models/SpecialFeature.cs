namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Additional feature gained from tags which provides conditional benefits to character's stats.
/// </summary>
public class SpecialFeature
{
    public SpecialFeature()
    {
        
    }
    public SpecialFeature(string name)
    {
        Name = name;
    }
    public SpecialFeature(string name, string parameters)
    {
        Name = name;
        Parameters = parameters;
    }

    /// <summary>
    /// Special feature's name, as per the corresponding tag.
    /// </summary>
    public string? Name { get; set; }

    /// <summary>
    /// Special feature's parameters, if any.
    /// </summary>
	public string? Parameters { get; set; }
}
