/// @description Scythe slash
event_inherited();
snd_play(sndBlackSwordMega);
// Inherit the parent event
with instance_create(x+hspeed,y+vspeed,SpinSlash)
{
	speed = other.speed*0.5;
	direction = other.direction;
	longarms = 0
	if instance_exists(Player)
		longarms = Player.skill_got[13]+Player.bettermelee
	image_angle = direction
	image_xscale = 1+(longarms*0.12);
	image_yscale = 1+(longarms*0.12);
	team = other.team
}
	
with instance_create(x+hspeed,y+vspeed,SuperSpinSlash)
{
	speed = other.speed*0.5;
	direction = other.direction;
	longarms = 0
	if instance_exists(Player)
		longarms = Player.skill_got[13]+Player.bettermelee
	image_angle = direction
	image_xscale = 1+(longarms*0.12);
	image_yscale = 1+(longarms*0.12);
	team = other.team
}

BackCont.shake += 2;