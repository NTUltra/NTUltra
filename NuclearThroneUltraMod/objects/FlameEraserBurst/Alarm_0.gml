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
		with instance_create(x,y,Bullet6)
		{
			motion_add(point_direction(x,y,other.mox,other.moy),other.projectileSpeed+other.boost)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		boost+= 0.5;
	}
}
with creator
{
	if object_index != Player || !skill_got[2]
	{
		scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + 180,0.5);
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,0.5)
	}	
}

if ammo < 1
instance_destroy()

