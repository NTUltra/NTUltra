ammo -= 1

alarm[0] = time
image_xscale /= 2
image_yscale /= 2


if instance_exists(creator)
{
x = creator.x+lengthdir_x(8,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
y = creator.y+lengthdir_y(8,point_direction(creator.x,creator.y,UberCont.mouse__x,UberCont.mouse__y))
//FIRING
snd_play(sndLaser)
var acc = 1;
if instance_exists(Player)
acc = Player.accuracy;

with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + 15*acc;
team = other.team
image_xscale ++;
event_perform(ev_alarm,0)}
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) - 15*acc;
team = other.team
image_xscale ++;
event_perform(ev_alarm,0)}
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
team = other.team
image_xscale ++;
event_perform(ev_alarm,0)}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 6
creator.wkick = 5}


if ammo <= 0
instance_destroy()

