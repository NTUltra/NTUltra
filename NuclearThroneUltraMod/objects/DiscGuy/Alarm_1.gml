alarm[1] = 8+random(12)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 5+random(10);
}

if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 1
{
if random(5) < 1+UberCont.loops && point_distance(x,y,target.x,target.y)<250//minimum range
{
direction = point_direction(x,y,target.x,target.y)+180

speed*=0.4;
image_index = 0
sprite_index = spr_fire

snd_play(sndDiscgun)

with instance_create(x,y,EnemyDisc)
{motion_add(other.direction+180+(random(6)-3),3.2)
image_angle = direction
team = other.team}
walk=4;
alarm[1] = 20;
}
else if random(9)<1{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
walk=10+random(12);
alarm[1]=walk;
}
else if random(4)<1{
direction=random(360);
walk=10+random(20);
alarm[1]=walk;
}
else{
walk=10+random(10);
alarm[1]=walk+8+random(8);}
}
else if random(10)<4{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
walk=10+random(20);
alarm[1]=walk;}
else if random(10)<4{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
walk=10+random(20);
alarm[1]=walk+10+random(5);}
else
{motion_add(random(360),1)
walk=15+random(20);
alarm[1]=walk;}
}
else if random(10)<2{
motion_add(random(360),0.5)
walk=30+random(10)
alarm[1]=walk;}

