/// @description VLAMBEER
with UberCont
{
	about_to_unlock_alt_routes = false;
	unlocked_alt_routes = true;
	scrSave();
}
instance_create(x,y,ForceInversion);
instance_create(x,y,Vlambeer);
with Player
{
	lockout = false;	
}
with MusCont
{
	event_perform(ev_other,ev_room_start);	
}
instance_destroy();