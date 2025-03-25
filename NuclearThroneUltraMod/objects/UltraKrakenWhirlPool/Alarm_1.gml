/// @description Itterate through hits
var xx = hits[index][0];
var yy = hits[index][1];
var ang = point_direction(xx,yy,x,y);
BackCont.viewx2 += lengthdir_x(10,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,ang)*UberCont.opt_shake
BackCont.shake += 2
while (place_meeting(xx,yy,Wall))
{
	xx += lengthdir_x(2,ang);
	yy += lengthdir_y(2,ang);
}
snd_play(choose(sndWater1,sndWater2,sndRoll,sndTentacle,sndTentacle2));
with instance_create(x,y,FishBoost)
{
	motion_add(ang + 180,5);
}
with instance_create(xx,yy,Tentacle)
{
	team = other.team;
	scrCopyWeaponMod(other);
	sprite_index=sprUltraTentacle;
	ultra=true;
	dmg = 8;//10+irandom(4)
	if instance_exists(Player) && Player.ultra_got[61] && Player.altUltra//Captain of the kraken
	{
		dmg += 1;
	}
	image_angle = ang;
	team = other.team
	ammo = 14//24
	image_yscale += 0.3;
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	{
	sprite_index=sprTentacleSpawn
	image_angle = other.image_angle
	}
	with instance_create(x,y,FishBoost)
	{
		motion_add(ang,1);
	}
}
index += 1;
if index < allHits
{
	alarm[1] = time;	
}
else
{
	instance_destroy();	
}

image_xscale = lerp(1.5,1,clamp(index/allHits,0,1));
image_yscale = image_xscale;
var hitmeHits = ds_list_create();
var al = collision_circle_list(x,y,radius,hitme,false,false,hitmeHits,false);
for (var i = 0; i < al; i++)
{
	with hitmeHits[| i] {
		if team != other.team
		{
			DealDamage(other.dmg,false,true,false);
			with instance_create(x+random_range(-4,4),y+random_range(-4,4),Dust)
			{
				sprite_index = sprBubble;	
			}
			motion_add(point_direction(x,y,other.x,other.y),6);
		}
	}
}
ds_list_destroy(hitmeHits);