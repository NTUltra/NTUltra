event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
image_speed = 0;
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 9;
image_speed = 0.5
friction = 0;
bounces = 8;
sprite_index = sprPingPongBall;
image_index = irandom_range(0,4);
switch (image_index)
{
	case 0:
		trailColour = make_colour_rgb(193,29,29);
	break;
	case 1:
		trailColour = make_colour_rgb(122,17,178);
	break;
	case 2:
		trailColour = make_colour_rgb(49,178,42);
	break;
	case 3:
		trailColour = make_colour_rgb(203,167,58);
	break;
	case 4:
		trailColour = make_colour_rgb(175,175,175);
	break;
}
xprev = x;
yprev = y;

rotation = irandom_range(30,50) * choose(1,-1);

alarm[1] = irandom_range(1,10);