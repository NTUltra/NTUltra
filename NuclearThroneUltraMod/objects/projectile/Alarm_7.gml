/// @description Deflect gamemode
if team != 2
	exit;
alarm[7] = 1;
var deflectTeam = 2;
var deflectDirection = 0;
var deflected = false;
var projectiles = ds_list_create();
var al = instance_place_list(x,y,projectile,projectiles,false)
for (var j = 0; j < al; j++) {
	with projectiles[| j]
	{
		if team != 2 && !hasBeenDeflected
		{
			deflected = true;
			deflectTeam = team;
			deflectDirection = image_angle;
			hasBeenDeflected = true;
			team = other.team;
			if canBeMoved
			{
				direction = other.image_angle
				image_angle = direction
				//Deflect sprite
				event_user(15);
				with instance_create(x,y,Deflect)
					image_angle = other.direction
				
			}
		}
	}
}
ds_list_destroy(projectiles);
if deflected
{
	if canBeMoved
	{
		hasBeenDeflected = true;
		alarm[7] = 0;
		team = deflectTeam;
		image_angle = deflectDirection;
		direction = image_angle;
		speed *= 0.25;
		speed = max(1,speed);
		//Deflect sprite
		event_user(15);
	}
	else
	{
		instance_destroy();	
	}
}