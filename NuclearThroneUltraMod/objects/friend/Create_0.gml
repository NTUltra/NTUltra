/// @description Init
maxhealth = 120;
// Inherit the parent event
event_inherited();
my_health = maxhealth;
team = 2;
image_speed = 0.4;
hurt_pitch_variation = 0;
scrWeapons();
scrUltras();
scrSkills();
scrRaces();
//Give long arms
skill_got[13] = 1;
drawempty = 0;
p = 0;
race = instance_number(Friend);
gunangle = choose(0,180);
wepflip = 1
wkick = 0
bwkick = 0
wepangle = 0;
bwepangle = 0
bwepflip = 1;
walk = 0;
actTime = 8;
wepright = 1
bwepright = 1
target = noone;
right = 1;
reload = 0;
breload = 0;
queueshot = 0;
bqueueshot = 0;
//MODIFIERS!
wepmod1 = 0;
wepmod2 = 0;
wepmod3 = 0;
wepmod4 = 0;
//BMODIFIERS!
bwepmod1 = 0;
bwepmod2 = 0;
bwepmod3 = 0;
bwepmod4 = 0;
ammo[0] = 999
ammo[1] = 999
ammo[2] = 999
ammo[3] = 999
ammo[4] = 999
ammo[5] = 999
rad = 999;

//Unused but referenced
bettermelee = 0;
betterlaserbrain = 0;
betterpluto = 39;
betterrabbitpaw = 0.0;
betterrecyclegland = 0;
betterboltmarrow = 0;
humphySkill = 0;
curse = 0;
bcurse = 0;
existTime = 30;

friction = 0.45
maxSpeed = 4;
accuracy = 1;
dodgeOffset = choose(10,-10);
event_user(0);
alarm[1] = 30;
alarm[3] = 30;