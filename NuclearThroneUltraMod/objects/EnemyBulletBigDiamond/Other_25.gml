/// @description Deflected sprite change

// Inherit the parent event
event_inherited();
if team == 2
{
	sprite_index = sprEnemyBigDiamondBulletDeflected;
	hitSprite = sprSlugHit;
}
else
{
	sprite_index = sprEnemyBigDiamondBullet;
	hitSprite = sprEnemyBigDiamondBulletHit;
}