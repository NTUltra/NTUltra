/// @description Right Stab
alarm[0] = 2;
	snd_play_fire(choose(sndSword1,sndSword2))
	instance_create(x,y,Dust)
	var longArms = 0;
	if instance_exists(Player)
		longArms = Player.skill_got[13]+Player.bettermelee;
	with instance_create(x+lengthdir_x(-5+((longArms)*10),image_angle+90),y+lengthdir_y(-5+((longArms)*10),image_angle+90),SplinterLanceShank)
	{
		amount = 4;
		dmg = 10;
		longarms = 0
		if instance_exists(Player)
		longarms = (longArms)*3
		motion_add(other.image_angle+90,4+longarms)
		image_angle = direction
		team = other.team
	}
BackCont.shake += 2;