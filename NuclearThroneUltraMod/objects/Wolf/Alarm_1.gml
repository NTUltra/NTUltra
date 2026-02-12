alarm[1] = actTime + random(actTime);

walk = alarm[1]
scrTarget()
if sprite_index = spr_fire
sprite_index = spr_idle

if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) < 400
{
if random(2) < 1
{
//roll
snd_play(sndWolfRoll)
direction = point_direction(x,y,target.x,target.y)
sprite_index = spr_fire
image_index = 0
alarm[2] = 10
alarm[1] = actTime * 3

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 15+random(15);
}

}
else
{
direction = point_direction(x,y,target.x,target.y)+110+random(140)
if random(4) < 1
{
speed = 0
walk = 0
}}
}
else 
{
motion_add(random(360),2)
motion_add(point_direction(x,y,target.x,target.y),1.5)
if random(3) < 1
{
speed = 0
walk = 0}
}
}
else 
motion_add(random(360),2)

