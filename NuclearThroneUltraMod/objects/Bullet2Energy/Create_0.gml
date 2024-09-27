/// @description Init

// Inherit the parent event
event_inherited();
if typ != 0
	typ = 2;
friction -= 0.2;
originalDmg = 6;

if instance_exists(Player) && Player.skill_got[17]
{
	originalDmg += 4;
	defaultScale += 0.125;
}
dmg = originalDmg;
