/// @description Init
application_surface_draw_enable(false);
viewX = x;
viewY = y;

skillscroll = 0;
skillscrollmax = 0;
holdExplainUltraModTimer = 0;
holdExplainWepModTimer = 0;
holdExplainMutation = 0;
holdExplainGamemode = 0;
dynamicHudResetTime = 120;
gamemodeDynamicHud = dynamicHudResetTime;
mutationDynamicHud = dynamicHudResetTime;
gameovertime = 0
wave = 0
fogscroll = 0
//depth = -5;
gameoverText = "YOU DID NOT REACH THE NUCLEAR THRONE";
gmwidth = 1;
gmScroll = 0;
wepScroll = 0;
wepSurf = -1;

hudSurface = -1;
screenY = 0;
screenX = 0;
dataRef = noone;
fourThreeScale = 1;
imageIndex = 0;
route = [];
allRoutes = [];
routeIndex = 0;
time = 0;
loop = 0;
routeColours = [
//L1-L12						
make_colour_rgb(200, 043, 043),
make_colour_rgb(200, 187, 043),
make_colour_rgb(069, 200, 043),
make_colour_rgb(043, 200, 161),
make_colour_rgb(043, 095, 200),
make_colour_rgb(135, 043, 200),
make_colour_rgb(200, 043, 121),
make_colour_rgb(200, 106, 043),
make_colour_rgb(150, 200, 043),
make_colour_rgb(043, 200, 080),
make_colour_rgb(043, 176, 200),
make_colour_rgb(054, 043, 200),
make_colour_rgb(198, 043, 200),
//L13-L25
make_colour_rgb(200, 043, 058),
make_colour_rgb(200, 169, 043),
make_colour_rgb(087, 200, 043),
make_colour_rgb(043, 200, 143),
make_colour_rgb(043, 113, 200),
make_colour_rgb(117, 043, 200),
make_colour_rgb(200, 043, 139),
make_colour_rgb(200, 087, 043),
make_colour_rgb(169, 200, 043),
make_colour_rgb(043, 200, 062),
make_colour_rgb(043, 194, 200),
make_colour_rgb(043, 051, 200),
make_colour_rgb(180, 043, 200),
//L26-L38
make_colour_rgb(200, 043, 076),
make_colour_rgb(200, 150, 043),
make_colour_rgb(106, 200, 043),
make_colour_rgb(043, 200, 124),
make_colour_rgb(043, 132, 200),
make_colour_rgb(099, 043, 200),
make_colour_rgb(200, 043, 158),
make_colour_rgb(200, 069, 043),
make_colour_rgb(187, 200, 043),
make_colour_rgb(043, 200, 043),
make_colour_rgb(043, 200, 187),
make_colour_rgb(043, 069, 200),
make_colour_rgb(161, 043, 200)
]
everyArea = [];
var ii = 0;
repeat(10){
	everyArea[ii] = ii + 1;
	ii++;
}
var jj = 100;
repeat(40){
	everyArea[ii] = jj;
	jj++;
	ii++;
}

routeGlow = 0;
venomized = false;