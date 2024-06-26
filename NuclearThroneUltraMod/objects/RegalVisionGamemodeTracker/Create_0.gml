/// @description Init get all the characters you dont have done yet
noRegals = "CHARACTERS LEFT:\n";
var dada = 0;
with UberCont
{
	var dir = 1;
	repeat(racemax)
	{
		if (race_have[dir] && got_regal[dir] <= 0 && dada < 12)
		{
			other.noRegals += race_name[dir] + "\n";
			dada += 1;
		}
		dir += 1;
	}
}
