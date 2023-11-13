if fire > 0 and !instance_exists(Portal)
{
fire -= 1
	if !position_meeting(x-4,y+8,Wall)
		with instance_create(x-4,y+8,ToxicGas)
		{
			hspeed = -3;
			dodgeAble = false;
		}
	if !position_meeting(x+20,y+8,Wall)
		with instance_create(x+20,y+8,ToxicGas)
		{
			hspeed = 3;
			dodgeAble = false;
		}
	if !position_meeting(x+8,y-4,Wall)
		with instance_create(x+8,y-4,ToxicGas)
		{
			vspeed = -3;
			dodgeAble = false;
		}
	if !position_meeting(x+8,y+20,Wall)
		with instance_create(x+8,y+20,ToxicGas)
		{
			vspeed = 3;
			dodgeAble = false;
		}
}

if !position_meeting(x,y,Wall)
instance_destroy()

alarm[1] = 1;