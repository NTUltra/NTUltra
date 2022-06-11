if alarm[0]>20
{

with instance_create(x+random(8)-4,y+random(8)-4,Smoke)
motion_add(random(360),random(3));


    if random(8)<1
    {
    choose(snd_play(sndSpark1),snd_play(sndSpark2));
    BackCont.shake += 4
    with instance_create(x,y,Lightning)
    {image_angle = random(360);
    team = 2;
    ammo = 8+random(8);
    event_perform(ev_alarm,0)
    visible = 0
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    
    }

}

wave+=0.4;

if place_meeting(x,y,Player)
{
	if !active
	{
		active = true;
		var hasPowerCraving = Player.skill_got[30];
		if (wepmod1==0)
		{ replaceModNr = 0;}
		else if (wepmod2==0)
		{ replaceModNr = 0;}
		else if (wepmod3==0)
		{ replaceModNr = 0;}
		else if hasPowerCraving&&wepmod4==0//power craving
		{
		    replaceModNr = 0;
		}
		else
		{
			replaceModNr ++;
			if replaceModNr > 3 + hasPowerCraving
			{
				replaceModNr = 1;	
			}
		}
	}


	if KeyCont.key_pick[Player.p] = 1 && Player.maxhealth > 0
	{
	}
}
else
{
	active = false;	
}