/// @description Inverted

// Inherit the parent event
event_inherited();
maxhealth = 1400//1700
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
	sprite_index = sprInvertedNothingLeft;
	spr_idle = sprInvertedNothingLeft;
	spr_hurt = sprInvertedNothingLeftHurt;
}
with rightSide {
	sprite_index = sprInvertedNothingRight;
	spr_idle = sprInvertedNothingRight;
	spr_hurt = sprInvertedNothingRightHurt;
}
