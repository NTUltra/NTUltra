ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
switch (ammo)
{
case 4:
	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1)
	{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2,16)
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
break;
case 3:
	snd_play_fire(sndPopgun)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet2)
	{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(14)-7,14+random(2))
	image_angle = direction
	team = other.team
	    if (instance_exists(Player))
	    {
    
	    if Player.race=11
	    {
	    if team=2
	    speed*=1.18;
	    }
	    }
	}
break;
case 2:
	snd_play_fire(sndMachinegun)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet6)
	{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(14)-7,14+random(2))
	image_angle = direction
	team = other.team
	    if (instance_exists(Player))
	    {
    
	    if Player.race=11
	    {
	    if team=2
	    speed*=1.18;
	    }
	    }
	}
break;
case 1:
	snd_play_fire(choose(sndFrostShot1,sndFrostShot2))
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,FreezeBullet)
	{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2,16)
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
break;
case 0:
	snd_play_fire(sndPistol)
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

	with instance_create(x,y,Bullet1Flame)
	{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(4)-2,15)
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
break;
}


BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 4
}


if ammo <= 0
instance_destroy()

