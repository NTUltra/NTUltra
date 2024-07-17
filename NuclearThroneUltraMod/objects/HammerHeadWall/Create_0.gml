/// @description Init Simple
topspr=sprHammerHeadWallResource;
outspr=mskPickupThroughWall;
colour = c_white;
l = 0
r = 0
w = 24
h = 24
outindex = 0;
topindex = irandom(sprite_get_number(topspr) - 1);
image_xscale = choose(1,-1);
//HANDS VARIABLES
team = 0;
spr_hurt = sprHammerHeadWallResource;
mySize = 1;
my_health = 1;
meleedamage = 0;
maxhealth = 1;