ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndGrenade)


//repeat(3)
//{
with instance_create(x,y,SmallGrenade)
{
if other.isGold
	sprite_index = sprSmallGoldGrenade
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(12)-6)*other.creator.accuracy,other.projectileSpeed+random(3))//speed=10
image_angle = direction
team = other.team
//alarm[0] = 14//shorter fuse original 40 regular naddes 60
    if (instance_exists(Player))
    {
    
    if Player.race=11//HUNTER Projectile speed
    {
    if team=2
    speed*=1.18;
    }
    }
}
//}


BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 6}


if ammo <= 0
instance_destroy()

