scrTarget()
if target > 0
{
if point_distance(x,y,target.x,target.y) < 80 and !instance_exists(Portal) and collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
raddrop = 8
meleedamage = 0
size = 1
image_speed = 0.4

spr_idle = sprMeleeIdle
spr_walk = sprMeleeWalk
spr_hurt = sprMeleeHurt
spr_dead = sprMeleeDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20;
wepangle = choose(-140,140)
wepflip = 1
instance_change(MeleeBandit,false)
}
}

if image_index < 1
image_index += random(0.02)
else
{
if !sound_isplaying(sndAssassinPretend) and random(12) < 1 and x > __view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
{
snd_play(sndAssassinPretend)
}
image_index += 0.4
}



