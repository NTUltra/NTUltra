var s = 1;
if UberCont.normalGameSpeed == 60
	s = 0.5;
with enemy
{
if object_index!=HotDrake{
if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
}
with chestprop
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with HPPickup
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with AmmoPickup
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with WepPickup
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with RadChest
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with projectile
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256 and team != 2 and object_index != EnemyLaser
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}
with Sheep
{if x > other.x-256 and x < other.x+256 and y > other.y-256 and y < other.y+256 and team != 2 and object_index != EnemyLaser
{if place_free(x+lengthdir_x(s,point_direction(x,y,other.x,other.y)+180),y)
x += lengthdir_x(s,point_direction(x,y,other.x,other.y))
if place_free(x,y+lengthdir_y(s,point_direction(x,y,other.x,other.y)+180))
y += lengthdir_y(s,point_direction(x,y,other.x,other.y))}}


/*
repeat(8)
{
with instance_create(x,y,Lightning)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(280)-60)*other.accuracy
team = other.team
ammo = 9+random(3)
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}}
*/
if(alarm[1]>0)
{
sprite_index=sprPortal;
    if(alarm[2]<1){
    if kraken
    {
    motion_add(random(360),random(3));
    snd_play(choose(sndWater1,sndWater2),0.1,true)
    snd_play(sndBloodLauncher,0.1,true);
    with instance_create(x,y,Tentacle)
{image_angle = random(360);
creator=other.id;
team = other.team
ammo = 14+random(14)
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,2+random(4) );
    }

}

alarm[2]=time * 2;//kraken rate.    
    }
    else
    {
    
    if instance_exists(Player){
    if Player.skill_got[17] = 1
    snd_play(sndLaserUpg,0.1,true)
    else
    snd_play(sndLaser,0.1,true)
    
    }
    with instance_create(x,y,Lightning)
    {image_angle = random(360)
    team = other.team
    ammo = 12+random(4);
    event_perform(ev_alarm,0)
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    

alarm[2]= time + 1;//lightning rate.
    }
    
        Sleep(1)
BackCont.shake += 2
    }
    //else{alarm[2]=40;}//lightning rate.
}
else if kraken
{

with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(60)-30,2+random(4) );
    }

}
