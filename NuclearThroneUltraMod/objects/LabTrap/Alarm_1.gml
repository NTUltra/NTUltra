alarm[1] = 1;

if fire > 0 and !instance_exists(Portal) && !instance_exists(Spiral) && !instance_exists(LevCont) && !instance_exists(GenCont)
{
	fire -= 1
if side = 1||loop
{
	with instance_create(x-4,y+8,TrapFire)
	{
	hspeed = -8
	dodgeAble = false;
	}
	with instance_create(x+20,y+8,TrapFire)
	{
	hspeed = 8
	dodgeAble = false;
	}
}
if side = 0||loop
{
	with instance_create(x+8,y-4,TrapFire)
	{
	vspeed = -12
	dodgeAble = false;
	}
	with instance_create(x+8,y+20,TrapFire)
	{
	vspeed = 12
	dodgeAble = false;
	}
}
}
else
alarm[1] = 30;

if !position_meeting(x,y,Wall)
	instance_destroy()
