/// @description Circle attack
if instance_exists(target) && target != noone
{
	with instance_create(target.x,target.y,VoidMasterCircleAttack)
	{
		target = other.target;
		alarm[1] = 20;
		snd_play(sndVoidSuck);
		scrInitDrops(1);
		scrDrop(10,0,true);
	}
	BackCont.shake += 10;
}
wepangle = -wepangle