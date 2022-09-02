/// @description attackeru

if instance_exists(Player)
{

	//Always has never miss boost
	/*
	var gotUlt = Player.ultra_got[42];
	Player.ultra_got[42] = true;
	direction = scrAimAssistLaser(direction);
	image_angle = direction;
	Player.ultra_got[42] = gotUlt;
	*/
	if instance_exists(hitme)
	{
		var n = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,hitme);
		if n != noone && n.team != other.team 
		&& point_distance(UberCont.mouse__x,UberCont.mouse__y,n.x,n.y) < 48
		{
			image_angle = point_direction(x,y,n.x,n.y);	
		}
	}
	var hit = collision_line_point(x,y,
	x+lengthdir_x(300,image_angle),
	y+lengthdir_y(300,image_angle),
	Wall,true,true);
	image_xscale = point_distance(x,y,hit[1],hit[2]);
	var hitEnemies = ds_list_create();
	var al = instance_place_list(x,y,hitme,hitEnemies,true)
	var ct = confuseTime;
	for (var j = 0; j < al; j++) {
		with hitEnemies[| j]
		{
			if team != other.team
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				my_health -= other.dmg;
				other.dmg *= 2;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,16)
				if speed > maxSpeed+4
					speed = maxSpeed+4;
				if alarm[1] > 0
				{
					alarm[11] += ct
					alarm[1] += ct;
				}
				if team != 0
				if instance_exists(myConfusion)
				{
					with myConfusion
					{
						alarm[0] += ct;
						image_speed = 0.4;
						image_index = 0;
					}
				}
				else
				{
					myConfusion = instance_create(x,y-8,HumphryConfuse)
					with myConfusion {
						myEnemy = other.id;
						image_xscale = choose(1,-1);
						image_speed = 0.4;
						sprite_index = sprEnemyConfusion;
						alarm[0] = ct;
					}
				}
			}
		}
	}
	ds_list_destroy(hitEnemies);
	instance_create(hit[1],hit[2],SmallWallBreak);
	x += lengthdir_x(image_xscale,image_angle);
	y += lengthdir_y(image_xscale,image_angle);
	image_xscale *= -1;
	maxscale = image_xscale;
}