image_yscale = defaultYscale+random(1.5)
var al = array_length(lightningList);
var xo = xstart - x
var yo = ystart - y
if al > 0 && alarm[0] < 1
{
	for (var i = 0; i < al; i++) {
		draw_sprite_ext(sprite_index,-1,lightningList[i].xx - xo,lightningList[i].yy - yo,lightningList[i].xs,image_yscale*0.5,lightningList[i].ang,c_white,1)
	}
	draw_sprite_ext(sprLightningEnd,-1,lightningList[al-1].xx - xo,lightningList[al-1].yy - yo,1,image_yscale*0.25,lightningList[al-1].ang,c_white,1)
}