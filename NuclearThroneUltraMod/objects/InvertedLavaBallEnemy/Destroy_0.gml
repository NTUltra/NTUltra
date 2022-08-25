scrDrop(25,1)
event_inherited()
repeat(8)
{
with instance_create(x,y,TrapFire)
{motion_add(random(360),1+random(2))
team = other.team
move_contact_solid(direction,8)
image_speed=0.5+random(0.2);
ignoreHitme=true;
}
}


