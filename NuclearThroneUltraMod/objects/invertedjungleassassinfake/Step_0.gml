scrTarget()
if target > 0
{
if point_distance(x,y,target.x,target.y) < 80 and !instance_exists(Portal) and collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
raddrop = 8
meleedamage = 0
mySize = 1
image_speed = 0.4

spr_idle = sprInvertedJungleAssassinIdle
spr_walk = sprInvertedJungleAssassinWalk
spr_hurt = sprInvertedJungleAssassinHurt
spr_dead = sprInvertedJungleAssassinDead

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 6;
wepangle = choose(-140,140)
wepflip = 1
instance_change(InvertedJungleAssassin,false)
}
}

if image_index < 1
image_index += random(0.02)
else
{
if !sound_isplaying(sndJungleAssassinPretend) and random(12) < 1 and x > __view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
{
snd_play(sndJungleAssassinPretend)
}
image_index += 0.4
}



