/// @description 60 FPS
var dt = 0.5;
var al = ds_list_size(forcePositions)
for (var i = 0; i < al; i++)
{
	instance_deactivate_object(forcePositions[| i]);
}
//Todo check for gencont
instance_deactivate_object(Wall);
instance_deactivate_object(Floor);
instance_deactivate_object(Top);
instance_deactivate_object(TopSmall);
with All
{
	scr60fpsHack();
}
instance_activate_object(Wall);
instance_activate_object(Floor);
instance_activate_object(Top);
instance_activate_object(TopSmall);
//instance_activate_object(Wall);
for (var i = 0; i < al; i++)
{
	instance_activate_object(forcePositions[| i]);
}
ds_list_clear(forcePositions);
//Individual timers
if !instance_exists(GenCont) && !instance_exists(LevCont)
with Player
{
	if wkick > 0
		wkick += 0.5
	if wkick < 0
		wkick -= 0.5
	if invertedportalcounter > 0
		invertedportalcounter -= dt;
	if flying > 0
		flying += dt;
	flyduration -= dt;
	if race=22
		blastArmourDelay += dt;
	wave -= 0.4*dt;
}
with enemy
{
	existTime -= dt;
	if walk > 0
		walk += dt;
}