alarm[0]=time;

snd_play(sndPopgun,0.1,true)

with instance_create(x,y,Bullet2)
{motion_add(other.image_angle+90+(random(6)-3),14+random(2))
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}


with instance_create(x,y,Bullet2)
{motion_add(other.image_angle-90+(random(6)-3),14+random(2))
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}

BackCont.shake += 2

