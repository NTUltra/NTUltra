if instance_number(enemy) = 0 or my_health < maxhealth
{
raddrop = 8
meleedamage = 0
mySize = 1
image_speed = 0.4

spr_idle = sprMeleeIdle
spr_walk = sprMeleeWalk
spr_hurt = sprMeleeHurt
spr_dead = sprMeleeDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 90+random(90)
wepangle = choose(-140,140)
wepflip = 1
instance_change(MeleeBandit,false)
}

