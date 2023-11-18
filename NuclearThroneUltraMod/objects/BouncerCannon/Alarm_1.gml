/// @description Bouncer bullets
snd_play(sndBouncerHitWall,0.1,true,true,1,false,true,0.75);
with instance_create(x,y,Bullet3)
{
	motion_add(other.ang,5);
	norecycle = choose(false,false,false,true);
	image_angle = direction
	team = other.team
	if team != 2 {
		sprite_index = sprEBouncerBullet
	}
}
ang += 30;
alarm[1] = 2;
if instance_exists(Player)
{
	BackCont.viewx2 += lengthdir_x(1,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,point_direction(Player.x,Player.y,x,y)+180)*UberCont.opt_shake
}
BackCont.shake += 0.5;