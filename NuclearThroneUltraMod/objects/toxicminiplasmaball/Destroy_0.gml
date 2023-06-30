event_inherited()
snd_play(sndToxicBoltGas,0.15,true);
with instance_create(x+lengthdir_x(4,direction),y+lengthdir_y(4,direction),ToxicThrowerGas)
	scrCopyWeaponMod(other);
with instance_create(x+lengthdir_x(8,direction),y+lengthdir_y(8,direction),ToxicThrowerGas)
	scrCopyWeaponMod(other);
with instance_create(x,y,ToxicThrowerGas)
	scrCopyWeaponMod(other);