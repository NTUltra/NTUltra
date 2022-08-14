///scrEndCharacters();
// /@description
///@param
function scrEndCharacters(){
	var unlockedRaces = [];
	x += random_range(-12,12);
	y += random_range(-12,12);
	with UberCont
	{
		var i = 1;
		var j = 0;
		var loop = loops;
		repeat(racemax)
		{
			if race_have[i]
			{
				unlockedRaces[j] = i;
				j ++;
			}
			i++;
		}
	}
	var alUnlockedRaces = array_length(unlockedRaces)-1;
	if instance_exists(Player)
		loop = Player.loops;
	var reviveTarget = min((loop*2) - 1,alUnlockedRaces, Player.racemax);
	with UberCont
	{
		var newCharacter = 0;
		while ( array_length(revivedCharacters) < reviveTarget )
		{
			do {
				newCharacter = unlockedRaces[irandom(alUnlockedRaces)];
			} until (newCharacter != 0 && newCharacter != Player.race && !array_contains(revivedCharacters,newCharacter))
			revivedCharacters[array_length(revivedCharacters)] = newCharacter;	
		}
	}
	var friendIndex = 1;
	with Friend {
		if !array_contains(unlockedRaces,friendIndex) || friendIndex == Player.race
		{
			instance_destroy();
		}
		else
		{
			race = friendIndex;
			event_user(0);
			if !array_contains(UberCont.revivedCharacters,friendIndex)
			{
				instance_destroy();
				with instance_create(x+random_range(16,-16),y+random_range(16,-16),DeadFriend)
				{
					sprite_index = other.spr_dead;
					image_index = image_number-1;
				}
			}
			else
			{
				alarm[3] = friendIndex*5;	
			}
		}
		friendIndex++;
	}
}