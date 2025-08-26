///@description AI
if active == 1
{
	alarm[1] = actTime;
	exit;
}
else if active < 2
{
	mask_index = mskPickupThroughWall;
	routines -= 1;
	if instance_number(enemy) < 6 + loops
		routines -= 10;
	alarm[1] = actTime;
	scrTarget()
	if routines < 1 || (target != noone && active != 1) {
		if routines < 1 || point_distance(x,y,target.x,target.y) < activateRange
		{
			sprite_index = spr_active;
			image_index = 0;
			active = 1;
			imageIndex = 0;
			with VenusRadTrap
			{
				routines -= 20;	
			}
		}
	}
	exit;
}
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
        if point_distance(target.x, target.y, x, y) > 48 {
			sprite_index = spr_fire;
			image_index = 0;
			alarm[2] = sprite_get_number(spr_fire)/image_speed;
            snd_play(sndGuardianFire,0.15)
			with instance_create(x,y - 8,VenusTrapBulletSpawn)
			{	
				/*
				if GetPlayerLoops() > random(2.5)
				{
					typ = 3;
					sprite_index = sprGuardianSquareBulletSpawn;
				}*/
				team = other.team;
				owner = other.id;
				motion_add(90,2.5);
				isInverted = other.isInverted;
				if isInverted
				{
					sprite_index = sprInvertedGuardianBulletSpawn;
				}
			}
			alarm[1] = actTime * 5;
        }
    }
}