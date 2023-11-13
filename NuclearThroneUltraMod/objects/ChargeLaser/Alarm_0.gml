/// @description increase charge

maxcharge -= 1

if maxcharge>0&&instance_exists(Player)
alarm[0] = max(1,chargetime+max(0,Player.reload*0.2));
else
{
//snd_play(sndFastRatExpire);
rate+=2.5;
}

if instance_exists(creator)
{
//snd_play(sndJackHammer)
//FIRING

if (scrCanChargeChargeGun())
{

snd_play(sndNadeAlmost);
rate++;

with instance_create(x+random(48)-24,y+random(48)-24,WeaponCharge)
{
sprite_index=sprChargeWeaponChargeLaser;
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}

BackCont.shake+=1+rate*0.05;

}

}

