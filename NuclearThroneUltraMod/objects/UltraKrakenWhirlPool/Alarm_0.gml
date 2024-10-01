/// @description All walls nearby will spawn a tentacle toward the center
var wallHits = ds_list_create();
allHits = collision_circle_list(x,y,radius,WallHitMe,false,false,wallHits,true);
if allHits > 0
{
	for (var i = 0; i < allHits; i ++)
	{
		hits[i][0] = wallHits[| i].x + 8;
		hits[i][1] = wallHits[| i].y + 8;
	}
	alarm[1] = 1;
}
else
{
	instance_destroy();	
}
ds_list_destroy(wallHits);
