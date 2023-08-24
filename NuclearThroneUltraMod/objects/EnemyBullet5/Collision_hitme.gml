if other.team != team and other.my_health > 0
{if other.object_index = Player
	{
	if other.sprite_index != other.spr_hurt
	{
		with other
		{
			sprite_index = spr_hurt
			image_index = 0
			my_health -= other.dmg
			snd_play(snd_hurt, hurt_pitch_variation)
			motion_add(point_direction(other.x,other.y,x,y),4)
			Sleep(40)
		}
	}
}
else
{

with other
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
}
}

instance_destroy()
}


if team = 2 && firedbysniper=true
{

if other.object_index=Sniper
{
//UNLOCK HUNTER
scrUnlockCharacter(11,"FOR DEFLECTING A SNIPER BULLET#INTO A SNIPER");
}

}

