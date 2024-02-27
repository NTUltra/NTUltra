image_speed=0;
my_health = 2;
team = -1;
if instance_exists(enemy)
target=instance_nearest(x,y,enemy);
else
target=noone;
//visible=false;
MarkerNr = 0;
accuracyBuff = 0.25;
speedBoost = 0.1;
if instance_exists(Player)
{
	if Player.skill_got[5]
		sprite_index= sprMarkerCrosshairTB;
	if Player.ultra_got[44]
		MarkerNr = instance_number(Marker);
	with Player {
		if (standartAccuracy > 0)
		{
			standartAccuracy *= other.accuracyBuff;
			accuracy = standartAccuracy;
			pSpeedBoost += other.speedBoost;
		}
	}
}

