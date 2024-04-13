/// @description Toss it
with owner
	wkick = 1;
if ds_list_size(suckedProjectiles) > 0
{
	with instance_create(x,y,SuckCannonBlowBurst)
	{
		team = other.team;
		scrCopyWeaponMod(other);
		creator = other.owner;
		ds_list_copy(suckedProjectiles,other.suckedProjectiles);
		ammo = ds_list_size(suckedProjectiles)
		time = clamp(12/max(0.1,ammo),1,4);
		event_perform(ev_alarm,0);
	}
}
ds_list_clear(suckedProjectiles);