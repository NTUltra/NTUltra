ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	snd_play_fire(sndHeavyJackhammer)
	//FIRING
	if instance_exists(Player){
	    with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*10,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),HeavyShank)
	    {
			dmg = 3;
		    longarms = 0
		    longarms = (Player.skill_got[13]+Player.bettermelee)*3
		    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(30)-15,3+longarms)
			image_angle = direction
			scrCopyWeaponMod(other);
			team = other.team
		}
	}
	BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	if BackCont.shake < 2
		BackCont.shake = 2
	with creator {
		wkick = -7
		if !skill_got[2]
		{
			var a = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + 180;
			motion_add(a,0.15)
		}	
	}
}

if ammo <= 0
instance_destroy()


