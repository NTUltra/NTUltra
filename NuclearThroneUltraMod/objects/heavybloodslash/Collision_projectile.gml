/// @description Also count deflects as a hit
if team != other.team && (other.typ == 1 || other.typ == 2)
	hitEnemy = true;
// Inherit the parent event
event_inherited();
