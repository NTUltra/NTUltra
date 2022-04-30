/// @description Inverted

// Inherit the parent event
event_inherited();
maxhealth = 1500//1700
raddrop = 800;
isInverted = true;
aTime = 30;
aTime -= min(GetPlayerLoops()*2,10);

spr_idle = sprInvertedNothingOn;
spr_hurt = sprInvertedNothingOff;
spr_dead = sprInvertedNothingDeath;

spr_switch_on = sprInvertedNothingSwitchOn;
spr_back_hurt = sprInvertedNothingBackHurt;
spr_back = sprInvertedNothingBack;
spr_activate = sprInvertedNothingActivate;
spr_middle = sprInvertedNothingMiddle;
spr_middle_hurt = sprInvertedNothingMiddleHurt;
spr_deactivated_hurt = sprInvertedNothingMiddleDeactivatedHurt;
spr_right_hurt_link = sprInvertedNothingRightHurtLink;
spr_right_deactivated_hurt_link = sprInvertedNothingRightDeactivatedHurtLink;
spr_left_hurt_link = sprInvertedNothingLeftHurtLink;
spr_left_deactivated_hurt_link = sprInvertedNothingLeftDeactivatedHurtLink;
spr_on = sprInvertedNothingOn
spr_off = sprInvertedNothingOff;
spr_middle_hurt_link = sprInvertedNothingMiddleHurtLink;
spr_middle_deactivated_hurt_link = sprInvertedNothingMiddleDeactivatedHurtLink

with leftSide {
	maxhealth = 500;
	EnemyHealthAdjustments();
	isInverted = true;
	sprite_index = sprInvertedNothingLeft;
	spr_leg = sprInvertedNothingLeg;
	spr_idle = sprInvertedNothingLeft;
	spr_hurt = sprInvertedNothingLeftHurt;
	spr_left_deactivated = sprInvertedNothingLeftDeactivated;
	spr_left_deactivated_hurt = sprInvertedNothingLeftDeactivatedHurt;
	spr_left_hurt = sprInvertedNothingLeftHurt;
	spr_left_hurt_link = sprInvertedNothingLeftHurtLink;
	spr_left_deactivated_hurt_link = sprInvertedNothingLeftDeactivatedHurtLink;
	gunangle[0] -= 10;
	gunangle[1] -= 10;
	gunangle[2] -= 10;
	
}
with rightSide {
	maxhealth = 500;
	EnemyHealthAdjustments();
	isInverted = true;
	sprite_index = sprInvertedNothingRight;
	spr_leg = sprInvertedNothingLeg;
	spr_idle = sprInvertedNothingRight;
	spr_hurt = sprInvertedNothingRightHurt;
	spr_right_deactivated = sprInvertedNothingRightDeactivated;
	spr_right_deactivated_hurt = sprInvertedNothingRightDeactivatedHurt;
	spr_right_hurt = sprInvertedNothingRightHurt;
	spr_right_hurt_link = sprInvertedNothingRightHurt;
	spr_right_hurt_link = sprInvertedNothingRightHurtLink;
	spr_right_deactivated_hurt_link = sprInvertedNothingRightDeactivatedHurtLink;
	gunangle[0] += 10;
	gunangle[1] += 10;
	gunangle[2] += 10;
}
with ThroneFlame
{
	isInverted = true;
	sprite_index = sprInvertedThroneFlameIdle;
}
