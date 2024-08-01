/// @description 60 FPS
var dt = 0.5;
var al = ds_list_size(forcePositions)
for (var i = 0; i < al; i++)
{
	instance_deactivate_object(forcePositions[| i]);
}
//Todo check for gencont
with All
{
	scr60fpsHack(dt);
}
for (var i = 0; i < al; i++)
{
	instance_activate_object(forcePositions[| i]);
}
ds_list_destroy(forcePositions);
forcePositions = ds_list_create();
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
	wave -= 0.4*dt;
	tailWave -= 0.4*dt;
}
with enemy
{
	existTime -= dt;
	if walk > 0
		walk += dt;
}