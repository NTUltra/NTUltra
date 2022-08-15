friction = 0.415
image_speed = 0.4
depth = 6;
dmg = 1;
impactWristed = false;
if instance_exists(Player){
	if Player.ultra_got[52] == 1{
		friction=0.32;
	}
	if Player.skill_got[20] {
		dmg = 2;
		alarm[1] = 1;
		impactWristed = true;
	}
}

canspawnportal = true;
alarm[0] = 30;
with Corpse
{
	other.alarm[0] += sign(alarm[0]);	
}
