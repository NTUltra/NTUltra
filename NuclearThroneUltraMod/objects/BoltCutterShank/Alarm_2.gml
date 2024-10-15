/// @description CUT
with owner
{
	wkick += 2;
}
BackCont.shake += 15;
didCut = true;
snd_play(sndBoltCutterCut,0.05);
Sleep(20);
with instance_create(x,y,BoltCutterCutShank)
{
	owner = other.owner;
	dmg = 12;
	direction = other.direction;
	image_angle = other.image_angle;
	speed = other.speed;
	team = other.team;
	scrCopyWeaponMod(other);
}