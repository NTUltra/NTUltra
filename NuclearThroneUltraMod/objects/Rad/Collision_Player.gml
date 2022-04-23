if speed = 0
{instance_destroy()
other.rad += 1
if other.crown == 4
other.rad += 0.18;
if UberCont.radUp
other.rad += 0.15;
snd_play_2d(sndRadPickup,0.05,true);

if other.skill_got[3]//Pluto
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatRad;
}
else
{
with instance_create(x,y,BulletHit)
sprite_index=sprEatRadPlut;
}

if other.ultra_got[88] == 1
{
	var ac = other.accuracy;
	with instance_create(x,y,UltraLightning)
	{
		image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*ac
		team = 2
		ammo = 6+random(8)//60
		///if Player.ultra_got[59]=1 
		///ammo+=4;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
}
}