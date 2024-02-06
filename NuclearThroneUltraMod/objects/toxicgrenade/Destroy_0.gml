/// @description Gass

// Inherit the parent event
sticky = false;
event_inherited();
var hits = ds_list_create();
var al = instance_place_list(x,y,enemy,hits,false)
for (var i = 0; i < al; i++) {
	with hits[| i]
	{
		if other.team != team
		{
			snd_play(snd_hurt, hurt_pitch_variation);
			DealDamage(5)
			speed = 0;
			walk *= 0.5;
			sprite_index = spr_hurt
			image_index = 0
			BackCont.shake += 5
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