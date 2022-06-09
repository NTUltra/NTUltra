/// @description increase charge
maxcharge -= 1

if maxcharge>0&&instance_exists(Player)
alarm[0] = chargetime+max(0,Player.reload*0.2);
else
{
snd_play(sndFastRatExpire);
rate+=2.5;
}

if instance_exists(creator)
{
//snd_play(sndJackHammer)
//FIRING

if (KeyCont.key_fire[Player.p] = 1 or KeyCont.key_fire[Player.p] = 2 or Player.keyfire = 1 or Player.clicked = 1 or KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2) && (Player.ammo[type]>=cost)
{

//snd_play(sndNadeAlmost);
rate+= 1.5;

with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}

BackCont.shake+=1+rate*0.05;

}

}

