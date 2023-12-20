/// @description More lines

// Inherit the parent event
event_inherited();

if alarm[2] > 6
{
	repeat(4)
	{
		with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
		{
			move_contact_solid(other.gunangle+90,random(480))
			motion_add(random(360),1+random(1))
			alarm[0] = 3+random(4)
		}           
	}
	repeat(4)
	{
		with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
		{
			move_contact_solid(other.gunangle+180,random(480))
			motion_add(random(360),1+random(1))
			alarm[0] = 3+random(4)
		}           
	}
	repeat(4)
	{
		with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
		{
			move_contact_solid(other.gunangle+270,random(480))
			motion_add(random(360),1+random(1))
			alarm[0] = 3+random(4)
		}           
	}
}
