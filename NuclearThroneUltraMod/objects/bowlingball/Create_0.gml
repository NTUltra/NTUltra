event_inherited();
/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */
image_speed = 0.4;
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
dmg = 15;
image_speed = 0.5
friction = 0;
bounces = 6;
sprite_index = choose(sprBowlingBall1,sprBowlingBall2,sprBowlingBall3,choose(sprBowlingBall4,sprBowlingBall5));