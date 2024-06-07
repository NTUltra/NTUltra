/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
event_inherited();
sprStart = sprEnemyLaserStartWallPierce;
sprEnd = sprEnemyLaserEndWallPierce;
image_angle = 90;
alarm[0] = 0;
image_xscale = camera_get_view_height(view_camera[0])*0.5;
image_yscale += 0.5;
isHorizontal = false;
isFlipped = false;