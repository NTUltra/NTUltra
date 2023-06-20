maxhealth = 20
drawShadow = true;
spr_idle = sprCarIdle
spr_hurt = sprCarHurt
spr_dead = sprScorchmark
if instance_exists(Player)
{
if Player.area = 5||Player.area = 107
{
spr_idle = sprFrozenCar
spr_hurt = sprFrozenCarHurt
spr_dead = sprScorchmark
}
}
mySize = 1

event_inherited()


snd_hurt = sndHitMetal



