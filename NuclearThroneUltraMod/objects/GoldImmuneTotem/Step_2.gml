/// @description Keep alive

// Inherit the parent event
event_inherited();

var al = ds_list_size(myGuys);
for (var i = 0; i < al; i++)
{
	var myGuy = myGuys[| i];
	with myGuy
	{
		if sprite_index == spr_hurt
		{
			sprite_index = spr_idle;
			BackCont.shake *= 0.5;
		}
		totemImmune = true;
		my_health = 999;
		prevhealth = 999;
	}
}