/// @description Circle attack
if instance_exists(target) && target != noone
{
	with instance_create(target.x,target.y,VoidMasterCircleAttack)
	{
		target = other.target;
		snd_play(sndVoidStyle);
	}
	BackCont.shake += 10;
}