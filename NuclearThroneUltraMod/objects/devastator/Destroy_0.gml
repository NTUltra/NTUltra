/// @description Big boom

// Inherit the parent event
event_inherited();
if object_index == Devastator
{
	snd_play(sndDevastatorExplo,0.1,true)
	repeat(4)
	{
		var l = random_range(16,48);
		var d = random(360);
		var xx = xprevious+lengthdir_x(l,d);
		var yy = yprevious+lengthdir_y(l,d);
		with instance_create(xx,yy,PlasmaImpact)
		{
			team = other.team;
		}
	}
	BackCont.shake += 4;
}