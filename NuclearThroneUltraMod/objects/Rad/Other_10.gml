/// @description Collect
if instance_exists(Player)
{
	instance_destroy()
	Player.rad += 1
	if Player.crown == 4
		Player.rad += 0.18;
	if UberCont.radUp
		Player.rad += 0.15;
	if Player.ultra_got[83]
		Player.rad += 0.20;
	snd_play_2d(sndRadPickup,0.05,true);

	if Player.skill_got[3]//Pluto
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatRad;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatRadPlut;
	}

	if Player.ultra_got[88] == 1
	{
		var ac = Player.accuracy;
		with instance_create(x,y,UltraLightning)
		{
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(30)-15)*ac
			team = 2
			ammo = 6+random(8)//60
			///if Player.ultra_got[59]=1 
			///ammo+=4;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			image_angle = Player.image_angle
		}
	}
}
