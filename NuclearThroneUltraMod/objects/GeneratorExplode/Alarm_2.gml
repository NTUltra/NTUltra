/// @description More
snd_play(sndExplosionL);
repeat(3)
{
	with instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),GreenExplosion) {
		team = other.team;	
	}
	ang += angstep;
}
var aa = random(360);
repeat(10)
{with instance_create(x,y,Dust)
motion_add(aa,3)
aa += 36}