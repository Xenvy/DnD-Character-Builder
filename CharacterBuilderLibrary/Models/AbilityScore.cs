
namespace CharacterBuilderLibrary.Models;

/// <summary>
/// Represents one of the six ability scores a character has.
/// </summary>
public class AbilityScore
{
    public AbilityScore()
    {
        Value = 8;
        Bonus = 0;
    }

	public int Value { get; set; }

	public int Bonus { get; set; }

    public int Modifier { get { return Value < 10 ? ((Value + Bonus - 11) / 2) : ((Value + Bonus - 10) / 2); } }

	public bool CanIncrease { get { return Value < 15 ? true : false; } }

	public int IncreaseCost { get { return Value > 12 ? 2 : 1; } }
}
