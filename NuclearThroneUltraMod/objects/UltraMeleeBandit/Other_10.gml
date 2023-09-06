/// @description SWING to deflect

// Inherit the parent event
event_inherited();
if alarm[2] < 1
{
	dodgeCooldown += 5;
	dodgeCooldown = min(dodgeCooldown + 5, dodgeCooldown + 20);
	alarm[2] = tellTime + 2;
	instance_create(x-5,y,Notice);
	instance_create(x,y,Notice);
	instance_create(x+5,y,Notice);
	alarm[1] += tellTime + 2;
	dodge = 1;
}
else {
	dodgeCooldown = max(dodgeCooldown - 1, originalDodgeCooldown);
}
