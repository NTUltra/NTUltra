event_inherited()

if isEsploding
{
	var dt = 1;
	if UberCont.normalGameSpeed == 60
		dt = 0.5;
	esplodeTime -= dt;
	sprite_index = sprTinyJellyFishExplode;
	if esplodeTime <= 0
	{
		esplode = true;
		my_health = 0;	
	}
	speed = 0;
}
else
{
	if !sleeping && sprite_index != spr_hurt and target != noone
		motion_add(point_direction(x,y,target.x,target.y),acc)
	image_angle = direction - 90;
	speed = maxSpeed;
	if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 64
		speed = maxSpeed - 1;
	if sleeping
		speed = 0;
	if target != noone && instance_exists(target) && target.team != team && target.team != 0 && distance_to_object(target) < 24
	{
		isEsploding = true;
		sprite_index = sprTinyJellyFishExplode;
	}
}