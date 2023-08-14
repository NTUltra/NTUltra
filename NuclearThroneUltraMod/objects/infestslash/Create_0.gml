event_inherited();
image_speed = 0.4
if GetPlayerUltramod() == ultramods.bloodMelee
{
	alarm[11] = 0;//Is already blood
	visible = true;
	mask_index = mskSlash;
}
typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1
knockback += 2;
dmg = 3;
alarm[2] = 5;