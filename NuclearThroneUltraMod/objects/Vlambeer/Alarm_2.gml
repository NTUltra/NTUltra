/// @description Cheating create a cutscene area
instance_destroy()
instance_activate_object(BackCont);
instance_activate_object(TopCont);
instance_activate_object(Cursor);
instance_activate_object(UberCont);
instance_activate_object(FPSHACK);
instance_activate_object(KeyCont);
instance_activate_object(GameRender);
instance_activate_object(MusCont);
with instance_create(x,y,RaceCopier)
{
	race = 27;
}
with instance_create(x,y,Player)
{
	//Mocky hands character
	bwep = 0;
	wep = 443;
	var am = 0.85;
	ammo[1] = round(typ_ammo[1]*am);
	ammo[2] = round(typ_ammo[2]*am);
	ammo[3] = round(typ_ammo[3]*am);
	ammo[4] = round(typ_ammo[4]*am);
	ammo[5] = round(typ_ammo[5]*am);
	ammo[wep_type[wep]] = round(typ_ammo[wep_type[wep]] * 2.5);
	area = 100;
	lockout = true;
}
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	scrEnableBigScreen();
else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	scrEnableVeryBigScreen();
if !instance_exists(BackCont)
	instance_create(0,0,BackCont)
if !instance_exists(TopCont)
	instance_create(0,0,TopCont);
scrCreateExpansionCutsceneArea();
var toppers = TopCont.depth - 9;
depth = toppers - 1;
instance_create_depth(x,y,toppers,ThroneIISpiral);
if UberCont.normalGameSpeed == 60 && !instance_exists(FPSHACK)
{
	instance_create(x,y,FPSHACK);
}
with InversionActivator
{
	rememberArea = other.rememberArea;
	depth = toppers;	
}
room_speed = UberCont.normalGameSpeed;