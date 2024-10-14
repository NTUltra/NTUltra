/// @description CUT
with owner
{
	wkick -= 4;
	wep_sprt[876] = sprBoltCutter;
}
BackCont.shake += 15;
didCut = true;
snd_play(sndBoltCutterCut,0.05);
with instance_create(x,y,Shank)
{
	dmg = 14;
	direction = other.direction;
	image_angle = other.image_angle;
	speed = other.speed;
	team = other.team;
	scrCopyWeaponMod(other);
	sprite_index = sprBoltCutterCut;
	mask_index = mskBoltCutterCut;
}