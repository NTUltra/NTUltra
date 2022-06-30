/// @description Draw shards
draw_self();
if UberCont.collectedInversionShardReward
{
	draw_sprite(sprInversionShard,3,x,y+sin(wave)*2);
}
else if UberCont.collectedInversionShards > 2
{
	draw_sprite(sprInversionShard,0,x - 8,y+sin(wave)*2);
	draw_sprite(sprInversionShard,1,x,y+sin(wave+1)*2);
	draw_sprite(sprInversionShard,2,x + 8,y+sin(wave+2)*2);
}
else if UberCont.collectedInversionShards > 1
{
	draw_sprite(sprInversionShard,0,x- 4,y+sin(wave)*2);
	draw_sprite(sprInversionShard,1,x + 4,y+sin(wave+1)*2);
}
else
{
	draw_sprite(sprInversionShard,0,x,y+sin(wave)*2);
}