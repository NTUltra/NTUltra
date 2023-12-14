if awake{
event_inherited()


if sprite_index != spr_hurt{
motion_add(direction,0.4)
}
if my_health<maxhealth*0.25
{ if speed >4{
speed=4}}
else{
if speed > 2.4
speed = 2.4
}


if alarm[3]>0{
//sniffing in da smoke yo
    with instance_create(x-16+random(12)-6,y+80+random(16),HotDrakePrepSmoke){
    motion_add(point_direction(x,y,other.x,other.y),1)
    }
	if sprite_index != spr_hurt
		sprite_index= spr_prep;
}


if alarm[2]>1{//breathe fire!
if target != noone && instance_exists(target)
	direction = point_direction(x,y,target.xprevious,target.yprevious)
    BackCont.shake += 0.1
    
repeat(4){
with instance_create(x-8,y-8,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(12)-6,3+random(7))
    image_angle = direction
    team = other.team
    }
    }
}



}
else if speed > 2
speed = 2

