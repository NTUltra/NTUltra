ammo -= projectileAmount

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
repeat(projectileAmount){
		with instance_create(x,y,Bullet7)
		{
			motion_add(point_direction(x,y,other.mox,other.moy),10+other.boost)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		boost+= 1;
	}
}


if ammo < 1
instance_destroy()

