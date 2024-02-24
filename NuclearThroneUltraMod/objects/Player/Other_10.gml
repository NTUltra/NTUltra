/// @description ROGUE BLAST ARMOUR
/*if blastArmourDelay > 0
{
	exit;
}*/
with instance_create(x,y,RogueExplosion)
{team=2;
	with myExplosionMask
		instance_destroy(id,false)}
//blastArmourDelay = 2;
if ultra_got[86]//SUPER BLAST ARMOUR
{
	if blastArmourPower > 12
		snd_play(sndExplosionXL);
	else if blastArmourPower > 6
		snd_play(sndExplosionL);
	with instance_create(x,y,RogueSuperBlastArmour)
	{
		randir=random(360);
		rings = other.blastArmourPower/3;
		dmg = 0;
		if rings > 12
		{
			//To prevent super laggy games limit the ringsize and instead increase dmg
			dmg += rings - 12;
			rings = 12;

		}
		ring = 1;
		dis = 24;
		disPlus = 25;
		event_perform(ev_alarm,0);
	}
	blastArmourPower += 1;
}
if ultra_got[88] == 1
{
	var angl = random(360);
	var am = 6;
	var anglStep = 360 / am;
	repeat(am)
	{
		with instance_create(x,y,Rad)
		{
			motion_add(angl,5);
		}
		angl += anglStep;
	}	
}

snd_play(sndIDPDNadeExplo);
