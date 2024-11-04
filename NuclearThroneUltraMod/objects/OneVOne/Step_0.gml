/// @description Manipulate enemy behaviour
if !instance_exists(Player)
	exit;
with enemy
{
	if alarm[1] > 1
	{
		alarm[1] -= 0.5;
	}
	speed *= other.speedBuff;
	if speed > 1 && walk > 0
		speed += 0.8;
}
with projectile
{
	if canBeMoved && team != Player.team
	{
		speed *= 1.01;	
	}
}