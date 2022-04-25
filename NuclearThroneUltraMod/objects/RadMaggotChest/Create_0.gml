event_inherited();
friction = 0.4
image_speed = 0

team = 0
size = 2

maxhealth = 8

spr_idle = sprRadChestMaggot
spr_hurt = sprRadChestMaggotHurt
spr_dead = sprRadChestMaggotDead

snd_hurt = sndHitFlesh

my_health = maxhealth
/*
if instance_exists(Player)
{
if Player.my_health < Player.maxhealth/2 and random(2) < 1
{
instance_destroy()
instance_create(x,y,HealthChest)
}
}
*/
