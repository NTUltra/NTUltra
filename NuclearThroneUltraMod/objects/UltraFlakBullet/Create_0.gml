event_inherited();
friction = 0.2
typ = 1 
ShotgunShouldersType();
bullets=20;
dmg=30//6 normmal
alarm[1] = 2;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		alarm[1] += 2;
		if Player.ultra_got[97]
		{
			alarm[1]+=1;
		}
	}
}
