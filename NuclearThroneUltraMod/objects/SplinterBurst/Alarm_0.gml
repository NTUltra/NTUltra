ammo -= 4

alarm[0] = time


if instance_exists(creator)
{
var xx;
var yy;
xx=creator.x;
yy=creator.y;

//FIRING
//with instance_create(xx,yy,Shell)
//motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))

repeat(2){
	with instance_create(x,y,Splinter)//5 splinters
	{motion_add(point_direction(x,y,other.mox,other.moy)+(random(3)-1.5)*Player.accuracy,20+random(4))
	image_angle = direction
	team = other.team
		if Player.race=11
	    {
	    if team=2
	    speed*=1.18;
	    }
	}
}
}


if ammo < 1
instance_destroy()

