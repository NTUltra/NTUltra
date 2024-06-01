/// @description Init Simple
topspr=sprHammerHeadWallResource;
outspr=mskPickupThroughWall;
colour = c_white;
l = 0
r = 0
w = 24
h = 24
outindex = 0;
topindex = irandom(sprite_get_number(topspr));
image_xscale = choose(1,-1);
scrInitDrops(1);