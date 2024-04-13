/// @description Start sucking

// Inherit the parent event
event_inherited();

alarm[1] = 1;
suckedProjectiles = ds_list_create();
dmg = 1;
chargeType = scrGetChargeType();
pitch = 0;
released = false;
dust = true;