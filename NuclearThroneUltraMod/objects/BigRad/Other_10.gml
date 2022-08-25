/// @description Collect
if instance_exists(Player)
{
	instance_destroy()
	Player.rad += 10
	if Player.crown == 4
		Player.rad += 1.8;
	else if Player.crown == 18
		Player.rad += 5;
	if UberCont.radUp
		Player.rad += 1.5;
	if Player.ultra_got[83]
		Player.rad += 2;
	snd_play(sndRadPickup)

	if Player.skill_got[3]//Pluto
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatBigRad;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprEatBigRadPlut;
	}
}
