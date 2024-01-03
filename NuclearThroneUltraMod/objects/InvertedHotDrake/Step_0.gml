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
    


if random(3)<1
{
snd_play(choose(sndLightning1,sndLightning2,sndLightning3,sndSpark1,sndSpark2,sndThunder));
with instance_create(x,y,Lightning)
{image_angle = other.direction+(random(30)-15)
team = other.team
ammo = 9+irandom(3)
event_perform(ev_alarm,0)
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}
}


repeat(2){
with instance_create(x-8,y-8,EnemyIceFlame)
    {
    motion_add(other.direction+random(60)-20,1+random(4))
    image_angle = direction
    team = other.team
    }
    }
}



}

