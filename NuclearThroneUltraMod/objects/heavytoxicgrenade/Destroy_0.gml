/// @description Gass

// Inherit the parent event
event_inherited();
var hits = ds_list_create();
var al = instance_place_list(x,y,enemy,hits,false)
for (var i = 0; i < al; i++) {
	with hits[| i]
	{
		if other.team != team
		{
			if sprite_index != spr_hurt
			{
				snd_play(snd_hurt, hurt_pitch_variation);
				my_health -= 10
				speed = 0;
				walk *= 0.5;
				sprite_index = spr_hurt
				image_index = 0
				BackCont.shake += 5
			}
		}
	}
}
ds_list_destroy(hits);
snd_play(sndToxicBoltGas);
repeat(20)
with instance_create(x,y,ToxicThrowerGas)
{
	scrCopyWeaponMod(other);
	speed += 0.01;
	image_xscale += 0.1
	image_yscale += 0.1
}
repeat(5)
with instance_create(x,y,ToxicThrowerGas)
{
	scrCopyWeaponMod(other);
	speed += 0.2;
}
var ang = direction;
var am = 10;
var angstep = 36;
repeat(am)
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		motion_add(ang,1);
		scrCopyWeaponMod(other);
	}
	ang += angstep;
}