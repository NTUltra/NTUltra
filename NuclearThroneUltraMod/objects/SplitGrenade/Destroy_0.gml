if sticky = 1
{

snd_play(sndExplosionL)

with instance_create(x,y,Explosion)
scrCopyWeaponMod(other);


with instance_create(x+32,y,Explosion)
scrCopyWeaponMod(other);

with instance_create(x+64,y,Explosion)
scrCopyWeaponMod(other);

/*instance_create(x+8,y+6,SmallExplosion)
instance_create(x+8,y-6,SmallExplosion)
instance_create(x+24,y+6,SmallExplosion)
instance_create(x+24,y-6,SmallExplosion)*/

with instance_create(x-32,y,Explosion)
scrCopyWeaponMod(other);

with instance_create(x-64,y,Explosion)
scrCopyWeaponMod(other);

/*instance_create(x-8,y+6,SmallExplosion)
instance_create(x-8,y-6,SmallExplosion)
instance_create(x-24,y+6,SmallExplosion)
instance_create(x-24,y-6,SmallExplosion)*/

with instance_create(x,y+32,Explosion)
scrCopyWeaponMod(other);

with instance_create(x,y+64,Explosion)
scrCopyWeaponMod(other);

/*instance_create(x+6,y+8,SmallExplosion)
instance_create(x-6,y+8,SmallExplosion)
instance_create(x+6,y+24,SmallExplosion)
instance_create(x-6,y+24,SmallExplosion)*/

with instance_create(x,y-32,Explosion)
scrCopyWeaponMod(other);

with instance_create(x,y-64,Explosion)
scrCopyWeaponMod(other);

/*instance_create(x+6,y-8,SmallExplosion)
instance_create(x-6,y-8,SmallExplosion)
instance_create(x+6,y-24,SmallExplosion)
instance_create(x-6,y-24,SmallExplosion)*/

/*ang = random(360)
instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)
instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)
instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)

instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(18,ang),Explosion)
instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(18,ang+120),Explosion)
instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(18,ang+240),Explosion)*/
}
else
{
snd_play(sndExplosion)
with instance_create(x,y,Explosion)
scrCopyWeaponMod(other);

}

/* */
/*  */
