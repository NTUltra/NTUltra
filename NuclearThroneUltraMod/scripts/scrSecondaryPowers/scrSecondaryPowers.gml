///scrSecondaryPowers();
// /@description
///@param
function scrSecondaryPowers(){
	switch (race)
	{
		case 27:
			if !instance_exists(HandBlock) && KeyCont.key_pick[p] == 1 or KeyCont.key_pick[p] == 2
			{
				with Hand
				{
					BackCont.shake += 10;
					snd_play(sndHumphryHalt);
					if alarm[1] > 0
						alarm[1] += 5;
					else if alarm[2] > 0
						alarm[2] += 5;
					previousSprite = sprite_index;
					sprite_index = spr_block;
					with instance_create(x,y,HandBlock) {
						team = other.team;	
					}
				}
			}
		break;
	}
}