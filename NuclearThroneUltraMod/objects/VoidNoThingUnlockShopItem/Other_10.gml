/// @description Unlock No Thing
scrUnlockCharacter(29,"FOR WAKING UP 'NO THING' IN THE VOID");
event_inherited();
with NoThingUnlocker
{
	introSpiel = false;
	closingWords = true;
	dialogueStep = 0;
	image_speed = 0.4;
	sprite_index = sprNoThingUnlockOutro;
	image_index = 0;
	event_user(0);
}
instance_destroy();