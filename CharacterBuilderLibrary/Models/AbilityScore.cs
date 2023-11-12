
namespace CharacterBuilderLibrary.Models;

public class AbilityScore
{
    public AbilityScore(Ability ability)
    {
        Ability = ability;
        Value = 8;
        Bonus = 0;
    }

    public Ability Ability { get; set; }

	public int Value { get; set; }

	public int Bonus { get; set; }

    public int Modifier { get { return Value < 10 ? ((Value + Bonus - 11) / 2) : ((Value + Bonus - 10) / 2); } }

	public bool CanIncrease { get { return Value < 15 ? true : false; } }

	public int IncreaseCost { get { return Value > 12 ? 2 : 1; } }
}
