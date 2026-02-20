ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

with instance_create(x,y,EnemyBullet3)
{
motion_add(other.creator.gunangle+random(4)-2+sin(other.ammo/2)*16,13)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}
with instance_create(x,y,EnemyBullet3)
{
motion_add(other.creator.gunangle+random(4)-2-sin(other.ammo/2)*16,13)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}


BackCont.shake += 1
creator.wkick = 7}


if ammo <= 0
instance_destroy()

