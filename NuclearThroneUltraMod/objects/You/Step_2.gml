if !instance_exists(Player){instance_destroy();exit;}

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}


if speed = 0// && returntoplayer<1 && returntoplayerfast<1
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

/*if UberCont.mouse__x < x
right = -1
else if UberCont.mouse__x > x
right = 1

if UberCont.mouse__y < y
back = 1
else if UberCont.mouse__y > y
back = -1*/

//if (KeyCont.key_fire[Player.p] = 1 or Player.keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot = 1) and reload < 15
//clicked = 1
/*
if can_shoot = 1 and Player.ammo[wep_type[wep]] >= wep_cost[wep] and Player.rad>=wep_rad[wep]

{if wep_auto[wep] = 0 and clicked = 1
{

scrYouFire();

clicked = 0
}
if wep_auto[wep] = 1 and (KeyCont.key_fire[Player.p] = 1 or KeyCont.key_fire[Player.p] = 2 or Player.keyfire > 0)
{
    scrYouFire();

}
}
else{clicked=0}*/



if Player.area = 5 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(Player.skill_got[2]==0)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if Player.area = 4 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(Player.skill_got[2]==0))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if friction != 0.45
friction = 0.45




//Speed
if speed > Player.maxSpeed
speed = Player.maxSpeed


/* */
///tough shell
if (Player.skill_got[31])
{
if ( lsthealth > my_health)
{

if (( lsthealth-my_health > 2 ) && ( lsthealth-2 != 0 )  )
    {
    my_health+=1;
    }
    
    if my_health>maxhealth
    my_health=maxhealth;

}

}

/* */
if !instance_exists(Player){instance_destroy();exit;}
if Player.skill_got[25]//strong spirit
    {
    
    if strongspiritused=false && my_health==maxhealth
    {
    //strongspiritused=false;
    strongspirit=true;
    }
    
    }

/* */
if !instance_exists(Player){instance_destroy();exit;}
if(my_health<=0)
{

    if Player.skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    my_health=1;
    alarm[5]=10;
    strongspiritused=true;
    strongspirit=false;
    }
    }
    
    if(alarm[5]>0)
    {
        my_health=1;
    }
}

/* */
if alarm[6]>0
{

scrYouFire();

}

/* */
/*  */
