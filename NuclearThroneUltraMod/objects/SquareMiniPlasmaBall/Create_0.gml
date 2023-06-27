/// @description One way projectile

// Inherit the parent event
event_inherited();
alarm[4] = 5;
typ = 3;
alarm[11] = 0;

nomscale = 1;
wallScale = 0.2;
grow = 0.04;
hitShrink = 0.3;
destroyScale = 0.4;
maxSpeed = 7;
acc = 1;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		nomscale += 0.4;
		wallScale -= 0.05;
		grow += 0.01;
		destroyScale -= 0.05;
		image_xscale = nomscale;
		image_yscale = nomscale;
	}
	if Player.race=11
    {
		acc += 0.5;
		maxSpeed += 2;
    }
	if Player.crown == 23//Crown of speed
	{
		acc += 0.5;
		maxSpeed += 2;
	}
	if Player.crown == 24//Crown of sloth
	{
		acc -= 0.2;
		maxSpeed -= 1.5;
	}
}
image_speed = 0.5
resetSpeed=false;
ptime = 2;
alarm[1] = choose(1,2);