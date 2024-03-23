if rad > 25 and spr_idle = sprProtoStatueCharge
{
snd_play(sndStatueCharge,0.1,true)
var numEn = 0;
with enemy
{
	if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
	{
		numEn ++;
	}
}
if numEn > 2
	repeat(2)
		instance_create(x,y,IDPDSpawn)
spr_hurt = sprProtoStatueDoneHurt
image_index = 0
spr_idle = sprProtoStatueDone
sprite_index = spr_idle
	my_health = max(1,my_health-24);
}
else if rad > 0 and spr_idle != sprProtoStatueDone and spr_idle != sprProtoStatueDoneIdle
{
spr_idle = sprProtoStatueCharge
}