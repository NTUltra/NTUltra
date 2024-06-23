/// @description REROLL
with target
{
	if !hasBeenRerolled
	{
		hasBeenRerolled = true;
		BackCont.shake += 15;
		if instance_exists(Player)
		{
			var d = point_direction(x,y,Player.x,Player.y);
			BackCont.viewx2 += lengthdir_x(15,d)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(15,d)*UberCont.opt_shake
		}
		var ang = random(360);
		snd_play(sndSledgeHit);
		snd_play(sndHitMetal);
		repeat(6)
		{
			with instance_create(x,y,Smoke)
			{
				motion_add(ang,2);
			}
			ang += 60;
		}
		event_user(2);
	}
	else
	{
		with instance_create(x,y,PopupText)
		{
			mytext = "ALREADY RE-ROLLED"
			theColour=c_red;
		}
		BackCont.shake += 5;	
	}
}
instance_destroy();
