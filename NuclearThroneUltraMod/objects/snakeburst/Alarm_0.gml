ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndScorpionFire)

with instance_create(x,y,BulletSnake)
{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(6)-3,11)
	image_angle = direction
	team = other.team
    if (instance_exists(Player))
    {
    
    if Player.race=11//HUNTER Projectile speed
    {
	    if team=2
			speed*=1.18;
	    }
    }
}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 4}


if ammo <= 0
instance_destroy()

