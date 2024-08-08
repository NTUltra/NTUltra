if !instance_exists(Player){instance_destroy();exit;}
if KeyCont.key_west[Player.p] = 2 or KeyCont.key_west[Player.p] = 1
hspeed -= 3
if KeyCont.key_east[Player.p] = 2 or KeyCont.key_east[Player.p] = 1
hspeed += 3
if KeyCont.key_nort[Player.p] = 2 or KeyCont.key_nort[Player.p] = 1
vspeed -= 3
if KeyCont.key_sout[Player.p] = 2 or KeyCont.key_sout[Player.p] = 1
vspeed += 3

if speed = 0// && returntoplayer<1 && returntoplayerfast<1
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if UberCont.mouse__x < x
right = -1
else if UberCont.mouse__x > x
right = 1

if UberCont.mouse__y < y
back = 1
else if UberCont.mouse__y > y
back = -1

if Player.area = 5 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if Player.area = 4 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if friction != 0.45
friction = 0.45




//Speed
if Player.outOfCombat
{
	if speed > Player.maxSpeed + 1
		speed = Player.maxSpeed + 1
}
else if speed > Player.maxSpeed
speed = Player.maxSpeed

/* */
///tough shell
if (skill_got[31])
{
if ( prevhealth > my_health)
{

	var dmgTaken = prevhealth-my_health;
	var maxDmg = 9;
	var megaBreak = false;
	if dmgTaken > maxDmg
	{
		var restore = dmgTaken - maxDmg;
		my_health += restore;
		megaBreak = true;
	}
	else if (dmgTaken > 2 )
    {
	    my_health += 1;
		snd_play(sndHitRock);
		repeat(3)
			with instance_create(x,y,Debris)
			{
				speed *= 1.6;
			}
		if megaBreak
		{
			snd_play(sndExplosionS);
			BackCont.shake += 5;
			repeat(3)
			with instance_create(x,y,Debris)
			{
				speed *= 3;
			}
		}
    }
    
    if my_health>maxhealth
    my_health=maxhealth;
}

}

/* */
if !instance_exists(Player){instance_destroy();exit;}

/* */
if !instance_exists(Player){instance_destroy();exit;}

if (my_health<prevhealth)
{
	if skill_got[2]
	{
		extrafeetalarm = 35;
		extrafeetdodged = false;
	}
	if skill_got[38] && alarm[3] < 1 && alarm[1] < 1
	{
		metabolism += 1;
		if metabolism > 2
		{
			metabolism = 0;
			my_health = prevhealth;
			alarm[3] = alarm[3] + 2;
			audio_stop_sound(snd_hurt);
			snd_play_2d(sndMetabolism,0.1);
			//scrGiveEuphoriaShield();
			scrCollectAmmo(1);
		}
	}
	//INNER PEACE
	if (skill_got[46]) && (my_health<prevhealth && alarm[3] < 1 && alarm[1] < 1)
	{
		if peaceBarriers > 0
		{
			my_health = prevhealth;
			audio_stop_sound(snd_hurt);
			snd_play_2d(sndPeaceHit,0.1);
			scrGiveEuphoriaShield();
			alarm[3] = max(alarm[3],6);
			peaceBarriers -= 1;
		}
		peaceBarrierTime = 0;
	}
	//Took a hit?
	if skill_got[12]//euphoria resistance?
	{
		if !instance_exists(GenCont)&&(!instance_exists(myShield) || myShield == -1)&&!instance_exists(LevCont)
		{
		if skill_got[28]//rage
		{
		if my_health<prevhealth//I been hit
		rage=0;
		}

		prevhealth=my_health;
		if race=25
		alarm[3]=17;
		else
		alarm[3]=14;//duration
		myShield = instance_create(x,y,EuphoriaShield);//make sure you change speed of animation aswell when changing duration
		with myShield
			owner = other.id;
		}
	}
	if (isAlkaline)//Alkaline Savila
	{
		var damageTaken = prevhealth - my_health;
		//Needs to be healable or lethal
		if (damageTaken > 0 || my_health <= 0)
		{
			var healThis = 1;
			isAlkaline = false;
			if (skill_got[9]) //Second stomache
				healThis *= 2;
			my_health=min(maxhealth,prevhealth+healThis);
			prevhealth = my_health;
			with instance_create(x,y,HealFX)
				depth = other.depth-1;
			with instance_create(x,y,SharpTeeth)
				owner=other.id;
			snd_play(sndBloodlustProc)
			
		}
	}
}

if(my_health<=0)
{

    if skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    my_health=1;
    alarm[1]=14;
    strongspiritused=true;
    strongspirit=false;
    }
    }
    
    if(alarm[1]>0)
    {
        my_health=1;
    }
}

var dis = point_distance(x,y,Player.x,Player.y)
if dis >= 300
{
	x = Player.x;
	y = Player.y;
}
else
{
	if dis > 100
	{
		returntoplayer=30;
		returntoplayerfast=0;
	}

	if (Player.speed=0)&&dis>16//&&random(10)<1
	{
		returntoplayerfast=20;
		returntoplayer=0;
	}

	if dis < 16
		returntoplayerfast=0;

	if returntoplayer>0
	{//motion_add(point_direction(x,y,Player.x,Player.y),3);
	mp_potential_step(Player.x,Player.y,1,false)
	returntoplayer--;
	motion_add(direction,0.8);
	}

	if returntoplayerfast>0
	{//motion_add(point_direction(x,y,Player.x,Player.y),3);
	mp_potential_step(Player.x,Player.y,3,false)
	returntoplayerfast--;
	motion_add(direction,0.8);
	}
}