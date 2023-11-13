move_contact_solid(direction,16)


dir = 0
do {dir += 1 x += lengthdir_x(5,direction) y += lengthdir_y(5,direction)

with instance_create(x,y,TrapFire)
{motion_add(random(360),0.4)
team = other.team
move_contact_solid(direction,0.3)
}


}
until dir > maxRange or place_meeting(x,y,Wall)

scrForcePosition60fps();

alarm[1] = 2

//speed = 4

