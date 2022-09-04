/// @description apply mod and give wep

if (wepmod1==0)
{wepmod1=wepmod;}
else if (wepmod2==0)
{wepmod2=wepmod;}
else if (wepmod3==0)
{wepmod3=wepmod;}
else if instance_exists(Player) && Player.skill_got[30]&&wepmod4==0//power craving
{
    wepmod4=wepmod;
    scrUnlockCSkin(17,"FOR ADDING FOUR MODS#TO ONE WEAPON",0);
}
else
{
	//Cycle mods
	switch (replaceModNr)
	{
		case 1:
			wepmod1 = wepmod;
		break;
		case 2:
			wepmod2 = wepmod;
		break;
		case 3:
			wepmod3 = wepmod;
		break;
		case 4:
			wepmod4 = wepmod;
		break;
	}
}

/*wepmod1=wepmod;
wepmod2=wepmod;
wepmod3=wepmod;*/

if curse=1//ITS CURSED YOU WOT!? LETS FIGHT!
{
	snd_play(sndCursedReminder);
	snd_play(sndStatueDead);

	//YOU?
	if instance_exists(Player) && Player.loops > 0 && instance_exists(Floor) && random(200)<1
	{
		var rd = random(360)
		var xx = x+lengthdir_x(96,rd);
		var yy = y+lengthdir_y(96,rd);
		var f = instance_nearest(xx,yy,Floor);
		instance_create(f.x+16,f.y+16,You);
	}

	with CrownVaultExit {instance_create(x,y,GuardianStatue);}//curse!

	if instance_exists(GuardianStatue)
	{
		with instance_nearest(x,y,GuardianStatue)
			my_health = 0
	}

}

snd_play(sndThunder);
repeat(6){

with instance_create(x+random(8)-4,y+random(8)-4,Smoke)
motion_add(random(360),random(5));

    with instance_create(x,y,Lightning)
    {image_angle = random(360);
    team = 2;
    ammo = 8+random(8);
    event_perform(ev_alarm,0)
    visible = 0
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    
}
myWeaponPickup = instance_create(x,y,WepPickupForOneWepOnly);
with myWeaponPickup
{
	if instance_exists(Portal)
	{
		var n = instance_nearest(x,y,Portal);
		if n != noone && collision_line(x,y,n.x,n.y,Wall,false,false) == noone
			motion_add(point_direction(x,y,n.x,n.y),1);
	}
	persistent = true;
	pickedup=true;
	depth=-9;
	image_angle=other.image_angle;
	scrWeapons()
	oneweponly=false;//drop it in one wep only gmode
	wep=other.wep
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = other.curse
	wepmod1 = other.wepmod1;
	wepmod2 = other.wepmod2;
	wepmod3 = other.wepmod3;
	wepmod4 = other.wepmod4;
	sprite_index = wep_sprt[wep]
            
}