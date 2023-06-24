/// @description reduce player ammo
if maxcharge>0&&instance_exists(Player)
alarm[1] = costtime+max(0,Player.reload*0.2);

if instance_exists(creator)
{
//snd_play(sndJackHammer)
//FIRING

if (scrCanChargeChargeGun())
{
if rate != 1
	Player.ammo[type]-=cost;
//if !audio_is_playing(sndNadeAlmost)
//snd_play(sndNadeAlmost);
rate++;

with instance_create(x+random(64)-32,y+random(64)-32,WeaponCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(2))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}

BackCont.shake+=1;

}

}

