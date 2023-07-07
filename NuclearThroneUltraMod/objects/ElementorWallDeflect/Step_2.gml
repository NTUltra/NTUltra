/// @description Collision with projectiles
if !instance_exists(Player)
{
	instance_destroy();
	exit;
}
var proj = ds_list_create();
var al = instance_place_list(x,y,projectile,proj,false);
for(var i = 0; i < al; i ++)
{
	
	with proj[| i] {
		if team == Player.team
		{
			if Player.ultra_got[93]
			{
				if typ!=0
				{
					do
					{
					x+=lengthdir_x(2,direction);
        
					y+=lengthdir_y(2,direction);
        
					if place_meeting(x,y,Wall)
					instance_destroy();
        
					}
					until(place_free(x,y) || place_meeting(x,y,Wall) || !place_meeting(x,y,VikingWall) )
				}
			}
			else
			{
				if typ == 0 && !canBeMoved// Laser
				{
					if isLaser
					{
						var d = point_distance(xstart,ystart,other.x+8,other.y+8) - 4;
						x = xstart + lengthdir_x(d,image_angle);
						y = ystart + lengthdir_y(d,image_angle);
						image_xscale = floor(point_distance(x,y,xstart,ystart)*0.5);
						alarm[0] += 1;
					}
				}
				else
					event_perform(ev_collision,Wall);
			}
		}
		else
		{
			if Player.skill_got[5]
			{
				if isGrenade
				{
					instance_destroy(id,false);	
				}
				else if typ == 1
				{
					team = 2
					if instance_exists(enemy)
					{
						var n = instance_nearest(x,y,enemy)
						direction = point_direction(x,y,n.x,n.y);
					}
					else
						direction = point_direction(x,y,other.x,other.y);
					speed += 1;
					speed *= 2;
					image_angle = direction;
					with instance_create(x,y,Deflect)
					{
						image_angle = other.direction
					}
					snd_play(sndRicochetWall,0.1,true);
					event_user(15);
				}
				else if typ == 0 && !canBeMoved
				{
					var d = point_distance(xstart,ystart,other.x,other.y) - 1;
					x = xstart + lengthdir_x(d,image_angle);
					y = ystart + lengthdir_y(d,image_angle);
					image_xscale = point_distance(x,y,xstart,ystart)*0.5
					alarm[0] ++;
				}
				else
				{
					instance_destroy()
				}
			}
			else
			{
				instance_destroy();
			}

		}
	}
}
ds_list_destroy(proj);