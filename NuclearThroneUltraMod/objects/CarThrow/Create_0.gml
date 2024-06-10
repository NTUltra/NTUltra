maxhealth = 20
scrWeaponModInit();
spr_idle = sprCarIdle
spr_hurt = sprCarHurt
spr_dead = sprScorchmark
if instance_exists(Player)
{
if Player.area = 5 ||Player.area = 107
{
spr_idle = sprFrozenCarThrown
spr_hurt = sprFrozenCarHurt
spr_dead = sprScorchmark
}
}
mySize = 1

event_inherited()

snd_hurt = sndHitMetal

image_angle = random(360)

dmg = 0;