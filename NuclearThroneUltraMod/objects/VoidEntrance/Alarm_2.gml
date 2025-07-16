/// @description If enemies are dead can go in
var numEn = 0;
with enemy
{
	if team != 2
		numEn ++;
}
var numEn = 0;
var totalHp = 0;
var bossLeft = false;
with enemy
{
	if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
	{
		if isBoss
			bossLeft = true;
		numEn ++;
		totalHp += my_health;
	}
}
var atLeast = 30;
if totalHp < atLeast && !bossLeft && numEn < 4 && !instance_exists(WantBoss) && !instance_exists(becomenemy)
{
	image_index = 2;
	name = "ENTER VOID?";
}
else
{
	image_index = 1;
	alarm[2] = 15;
}