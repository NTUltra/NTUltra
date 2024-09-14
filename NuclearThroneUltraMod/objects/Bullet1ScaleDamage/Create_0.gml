event_inherited();
dmg = 1;
alarm[11] = 0;
if !instance_exists(BulletScaler)
{
	instance_create(x,y,BulletScaler);	
}
cost = 2;
dmg += BulletScaler.dmg;
hasHit = 0;
if dmg > 29
{
	dmg = 30;
	sprite_index = sprBulletDamageScale4;
	mask_index = mskHeavyBullet;
}
else if dmg > 19
{
	sprite_index = sprBulletDamageScale3;
	mask_index = mskHeavyBullet;
}
else if dmg > 11
{
	sprite_index = sprBulletDamageScale2;
	mask_index = mskHeavyBullet;
}
else if dmg > 6
{
	sprite_index = sprHeavyBullet;
	mask_index = mskHeavyBullet;
}
else if dmg > 2
{
	sprite_index = sprBullet1;	
}