if instance_number(enemy) < 2 or my_health < maxhealth
{
raddrop = 11
meleedamage = 0
mySize = 1
image_speed = 0.4

spr_idle = sprInvertedMeleeIdle
spr_walk = sprInvertedMeleeWalk
spr_hurt = sprInvertedMeleeHurt
spr_dead = sprInvertedMeleeDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 90+random(90)
wepangle = choose(-140,140)
wepflip = 1
instance_change(InvertedMeleeBandit,false)
}

