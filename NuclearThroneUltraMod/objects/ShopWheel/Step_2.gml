if instance_exists(Player)
{
x=Player.x;
y=Player.y;
}
with ShopItem
{
	x = other.x;
	y = other.y;
}
if alarm[0] < 1 && KeyCont.key_spec[0] != 1 and KeyCont.key_spec[0] != 2
{
	with UberCont
	{
		instance_activate_all();
		var al = ds_list_size(keepDeactive);
		for (var i = 0; i < al; i++) {
			instance_deactivate_object(keepDeactive[| i]);	
		}	
	}
	alarm[0] = 2;

	//with ShopAmmo
	//	alarm[0]=1;
}