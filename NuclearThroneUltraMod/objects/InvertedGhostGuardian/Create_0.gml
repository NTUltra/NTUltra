/// @description Tweak

// Inherit the parent event
event_inherited();
actTime = 4;
maxRange = 245;
spr_idle = sprInvertedGhostGuardianWalk;
spr_walk = sprInvertedGhostGuardianWalk;
spr_hurt = sprInvertedGhostGuardianHurt;
spr_dead = sprInvertedGhostGuardianDead;
raddrop += 2;
maxhealth = 20
my_health = maxhealth;
EnemyHealthAdjustments();
maxSpeed += 1
acc += 0.9;
var am = array_length(myCompanions);
for (var i = 0; i < am; i++) {
	with myCompanions[i]
	{
		sprite_index = sprInvertedSquareGuardianBullet;
		ownerAngleRotationSpeed ++;
	}
}
