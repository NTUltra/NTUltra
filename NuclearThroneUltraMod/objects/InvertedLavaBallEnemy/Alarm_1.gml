alarm[1] = 6+random(12)
sleeping = false;
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if random(4) < 1
{
direction = point_direction(x,y,target.x,target.y)+180
snd_play(sndFiretrap);

speed*=0.4;
image_index = 0
sprite_index = spr_fire
alarm[2]=5+random(20);
walk = alarm[2]+20;
alarm[1] = alarm[2]+5;
}
else if random(4)<1{
walk=5+random(5);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(20)-10
}
else if random(3)<1{
direction=random(360);
walk=5+random(10);
alarm[1]=walk;
}
else{
speed=0;
walk=5+random(10);
alarm[1]=walk+5+random(5);
}
}//wall in between\/
else if random(7)<1{
walk=5+random(5);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(20)-10}
else if random(7)<1{
walk=8+random(8);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(4)-2}
else if random(5)<1{
walk=6+random(7);
alarm[1]=walk;
direction = random(360)}
else{
walk=8+random(9);
alarm[1]=walk+11+random(20);
direction = random(360)}
}//no target\/
else if random(10)<2{
motion_add(random(360),0.5)
walk=8+random(9)
alarm[1]=walk;}

