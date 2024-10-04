/// @description Teleport the player
image_index = 0;
if instance_exists(Player) && place_meeting(x,y,Player)
{
	with Player
	{
		if abs(vspeed) < maxSpeed - 0.5
		{
			snd_play_2d(sndGhostTeleport,0.1,false,false,3,0.9);
			var dis = 0;
			var xxx = x;
			var yyy = y;
			direction = other.direction;
			do {
				dis += 16;
				xxx += lengthdir_x(16,direction);
				yyy += lengthdir_y(16,direction);
			} until (!place_meeting(xxx,yyy,WallHitMe) && place_meeting(xxx,yyy,Floor) || dis >= 224)
			var xx = x;
			var yy = y;
			repeat(ceil(dis/16))
			{
				with instance_create(xx,yy,JumpDust)
				{
					sprite_index = sprSmoke;
					direction = other.direction;
				}
				xx += lengthdir_x(16,direction);
				yy += lengthdir_y(16,direction);
			}
			if place_meeting(xxx,yyy,Floor)
			{
				x += lengthdir_x(dis,direction);
				y += lengthdir_y(dis,direction);
				scrForcePosition60fps();
			}
			with PlayerGhostTeleporter
			{
				alarm[1] = 15;
				image_index = 1;
			}
		}
	}
}
/*
var projs = ds_list_create();
var al = instance_place_list(x,y,projectile,projs,false);
for (var i = 0; i < al; i ++) {
	with projs[| i]
	{
		if canBeMoved && team == 2
		{
			snd_play_2d(sndGhostTeleport);
			var dis = 0;
			var xxx = x;
			var yyy = y;
			direction = other.direction;
			do {
				dis += 16;
				xxx += lengthdir_x(16,direction);
				yyy += lengthdir_y(16,direction);
			} until (!place_meeting(xxx,yyy,WallHitMe) && place_meeting(xxx,yyy,Floor) || dis >= 224)
			var xx = x;
			var yy = y;
			repeat(ceil(dis/16))
			{
				with instance_create(xx,yy,JumpDust)
				{
					sprite_index = sprSmoke;
					direction = other.direction;
				}
				xx += lengthdir_x(16,direction);
				yy += lengthdir_y(16,direction);
			}
			if place_meeting(xxx,yyy,Floor)
			{
				x += lengthdir_x(dis,direction);
				y += lengthdir_y(dis,direction);
				scrForcePosition60fps();
			}
		}
	}
}
ds_list_destroy(projs);
*/
alarm[1] = 5;