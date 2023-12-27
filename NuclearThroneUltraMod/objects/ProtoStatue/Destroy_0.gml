event_inherited()

snd_play(snd_dead)

ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(other.ang,3)
ang += 36}

if close
{

	raddrop = rad
	scrRaddrop(raddrop);
} else if rad > 23
{
with instance_create(xstart,ystart,Portal)
{
	type = 3
	x = other.xstart;
	y = other.ystart;
}
if instance_exists(Player)
	Player.area = 100
else if instance_exists(PlayerSpawn)
	PlayerSpawn.area = 100;
}
else //Destroy and not full, pink sheep
{
	raddrop = rad
	scrRaddrop(raddrop);
	if instance_exists(Player) && Player.area == 5
	{
		with instance_create(x,y,PinkSheep) {
			alarm[0] = 0;	
		}
	}
}

if UberCont.crownHeal || true
{
	scrHeal(1,true);	
}