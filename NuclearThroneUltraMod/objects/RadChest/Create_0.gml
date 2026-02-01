friction = 0.4
team = 0
mySize = 1;
meleedamage = 0;
maxhealth = 4
event_inherited();
image_speed = 0
canOpenMind = true;
raddrop = 20;
spr_idle = sprRadChest
spr_hurt = sprRadChestHurt
spr_dead = sprRadChestCorpse
snd_hurt = sndHitMetal
hurt_pitch_variation = 0;
my_health = maxhealth

if instance_exists(Player)
{

if Player.RadMony
{
spr_idle = sprRadChestMony
spr_hurt = sprMoneyPileHurt
spr_dead = sprMoneyPileDead

snd_hurt = sndHitPlant
}
alarm[0] = 10;
alarm[1] = 2;


/*
if Player.race=4 && Player.my_health <= Player.maxhealth*0.5 and random(2) < 1//melting
{
instance_destroy(id,false)
instance_create(x,y,HealthChest)
}
else if Player.race!=4 && Player.my_health < round(6/2) and random(2) < 1 || ( Player.race=12 && random(9)<1 )//Yung cuz
{
instance_destroy(id,false)
instance_create(x,y,HealthChest)
}
*/

if instance_nearest(x-16,y-16,Floor).styleb = 1 and ( Player.area = 1 || Player.area = 105 ) and random(3) < 1
{
	instance_destroy(id,false);
	instance_create(x,y,RadMaggotChest);
}
}


