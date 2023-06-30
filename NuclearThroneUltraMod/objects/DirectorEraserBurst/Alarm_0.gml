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

repeat(4){
with instance_create(x,y,Bullet7)
{
motion_add(point_direction(x,y,other.mox,other.moy),10+random(4))
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}
}
}


if ammo < 1
instance_destroy()

