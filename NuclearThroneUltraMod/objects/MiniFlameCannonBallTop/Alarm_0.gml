/// @description Top Fire
alarm[0]=fireDelay;
image_angle+=12;
image_angle+=4;
BackCont.shake += 2
repeat(fireAmount)
{
with instance_create(x,y,TopFlame)
{motion_add(other.image_angle+random(10)-5,4+random(2))
	scrCopyWeaponMod(other);
team = other.team
}

with instance_create(x,y,TopFlame)
{motion_add(other.image_angle+180+random(10)-5,4+random(2))
	scrCopyWeaponMod(other);
team = other.team
}
}