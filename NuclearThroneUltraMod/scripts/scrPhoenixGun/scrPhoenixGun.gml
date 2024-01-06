///xxx();
// /@description
///@param
function scrPhoenixGun(aimDirection){
	snd_play_fire(sndFlare);
	snd_play_fire(sndPhoenixFire);
	if !instance_exists(DragonSound)
		instance_create(x,y,DragonSound)
	var pd;
	var i;
	var len = 26;
	var xx = x + lengthdir_x(len,aimDirection);
	var yy = y + lengthdir_y(len,aimDirection);
	var tx = xx;
	var ty = yy;
	var s = 8;
	var am = 15;
	var t = 1;
	with instance_create(xx,yy,PhoenixBurst)
	{
		motion_add(aimDirection,s);
		fireAngle = aimDirection;
		fireSpeed = 0;
		creator = other.id
		ammo = am
		time = t
		team = other.team
		event_perform(ev_alarm,0) 
	}
	len = 18;
	xx = x + lengthdir_x(len,aimDirection+90);
	yy = y + lengthdir_y(len,aimDirection+90);
	with instance_create(xx,yy,PhoenixBurst)
	{
		motion_add(aimDirection,s);
		fireAngle = aimDirection+90;
		creator = other.id
		ammo = am
		time = t
		team = other.team
		event_perform(ev_alarm,0) 
	}
	pd = point_direction(xx,yy,tx,ty);
	xx = xx + lengthdir_x(len,pd);
	yy = yy + lengthdir_y(len,pd);
	with instance_create(xx,yy,PhoenixBurst)
	{
		motion_add(aimDirection,s);
		fireAngle = aimDirection+180;
		creator = other.id
		ammo = am
		time = t
		team = other.team
		event_perform(ev_alarm,0) 
	}
	xx = x + lengthdir_x(len,aimDirection-90);
	yy = y + lengthdir_y(len,aimDirection-90);
	with instance_create(xx,yy,PhoenixBurst)
	{
		motion_add(aimDirection,s);
		fireAngle = aimDirection-90;
		creator = other.id
		ammo = am
		time = t
		team = other.team
		event_perform(ev_alarm,0) 
	}
	pd = point_direction(xx,yy,tx,ty);
	xx = xx + lengthdir_x(len,pd);
	yy = yy + lengthdir_y(len,pd);
	with instance_create(xx,yy,PhoenixBurst)
	{
		motion_add(aimDirection,s);
		fireAngle = aimDirection+180;
		fireSpeed = 0;
		creator = other.id
		ammo = am
		time = t
		team = other.team
		event_perform(ev_alarm,0) 
	}
	i = 2;
	len = 16;
	repeat(2)
	{
		xx = x + lengthdir_x(len*i,aimDirection+90);
		yy = y + lengthdir_y(len*i,aimDirection+90);
		with instance_create(xx,yy,PhoenixBurst)
		{
			motion_add(aimDirection,s);
			fireAngle = aimDirection-200;
			fireSpeed = 2;
			creator = other.id
			ammo = am
			time = t
			team = other.team
			event_perform(ev_alarm,0) 
		}
		i++;
	}
	len = 20;
	var dd = aimDirection+180
	repeat(3)
	{
		xx = xx + lengthdir_x(len,dd);
		yy = yy + lengthdir_y(len,dd);
		dd += 30;
		with instance_create(xx,yy,PhoenixBurst)
		{
			motion_add(aimDirection,s);
			fireAngle = aimDirection;
			fireSpeed = 1;
			creator = other.id
			ammo = am
			time = t
			team = other.team
			event_perform(ev_alarm,0) 
		}
	}
	i = 2;
	len = 16;
	repeat(2)
	{
		xx = x + lengthdir_x(len*i,aimDirection-90);
		yy = y + lengthdir_y(len*i,aimDirection-90);
		with instance_create(xx,yy,PhoenixBurst)
		{
			motion_add(aimDirection,s);
			fireAngle = aimDirection+200;
			fireSpeed = 2;
			creator = other.id
			ammo = am
			time = t
			team = other.team
			event_perform(ev_alarm,0) 
		}
		i++;
	}
	len = 20;
	var dd = aimDirection-180
	repeat(3)
	{
		xx = xx + lengthdir_x(len,dd);
		yy = yy + lengthdir_y(len,dd);
		dd -= 30;
		with instance_create(xx,yy,PhoenixBurst)
		{
			motion_add(aimDirection,s);
			fireAngle = aimDirection;
			fireSpeed = 1;
			creator = other.id
			ammo = am
			time = t
			team = other.team
			event_perform(ev_alarm,0) 
		}
	}
	i = 0
	repeat(5)
	{
		xx = x + lengthdir_x(len*i,aimDirection+180);
		yy = y + lengthdir_y(len*i,aimDirection+180);
		with instance_create(xx,yy,PhoenixBurst)
		{
			motion_add(aimDirection,s);
			fireAngle = aimDirection;
			fireSpeed = 0;
			creator = other.id
			ammo = am
			time = t
			team = other.team
			event_perform(ev_alarm,0) 
		}
		i++;
	}
	
	BackCont.viewx2 += lengthdir_x(10,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 5;
	wkick = 9
}