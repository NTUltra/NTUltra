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
gameovertime = 0
wave = 0
fogscroll = 0
//depth = -5;
gameoverText = "YOU DID NOT REACH THE NUCLEAR THRONE";
gmwidth = 1;
gmScroll = 0;

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
c_white,
c_blue,
c_red,
c_green,
c_orange,
c_maroon,
c_navy,
c_fuchsia,
c_olive,
c_purple,
c_yellow,
c_olive,
c_aqua,
c_lime];
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