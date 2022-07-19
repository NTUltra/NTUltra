
if instance_exists(Player)
{
if Player.skill_got[17] = 1
{
snd_play_fire(sndLaserUpg)
rate+=6+(Player.betterlaserbrain*2);
}
else
snd_play_fire(sndLaser)

if instance_exists(creator)
{
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(2)-1)*other.creator.accuracy
image_yscale=0.2+other.rate*0.2
team = other.team
scrCopyWeaponMod(other);
scrCanHumphry();
event_perform(ev_alarm,0)
}
}

/*
image_yscale = 1.06//1.2

if instance_exists(Player)
{
if Player.skill_got[17] = 1
image_yscale = 1.75
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 2*/


BackCont.viewx2 += lengthdir_x(1+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake

if rate>10
rate=10;
BackCont.shake += rate
if instance_exists(creator)
creator.wkick = rate
}

audio_stop_sound(sndCharge);

/* */
/*  */
