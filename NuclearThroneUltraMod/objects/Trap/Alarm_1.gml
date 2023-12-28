if fire > 0
{
fire -= 1
if side = 1||loop
{
	if !position_meeting(x-4,y+8,Wall)
		with instance_create(x-4,y+8,TrapFire)
		{
			hspeed = -8;
			dodgeAble = false;
		}
	if !position_meeting(x+20,y+8,Wall)
		with instance_create(x+20,y+8,TrapFire)
		{
			hspeed = 8;
			dodgeAble = false;
		}
}
if side = 0||loop
{
	if !position_meeting(x+8,y-4,Wall)
		with instance_create(x+8,y-4,TrapFire)
		{
			vspeed = -8;
			dodgeAble = false;
		}
	if !position_meeting(x+8,y+20,Wall)
		with instance_create(x+8,y+20,TrapFire)
		{
			vspeed = 8;
			dodgeAble = false;
		}
}
}

if !position_meeting(x,y,Wall)
	instance_destroy()

alarm[1] = 1;