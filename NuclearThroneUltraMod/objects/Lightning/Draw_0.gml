image_yscale = 1+random(1.5)
var al = array_length(lightningList);
if al > 0 && alarm[0] < 1
{
	for (var i = 0; i < al; i++) {
		draw_sprite_ext(sprite_index,-1,lightningList[i].xx,lightningList[i].yy,lightningList[i].xs,image_yscale*0.5,lightningList[i].ang,c_white,1)
	}
	draw_sprite_ext(sprLightningEnd,-1,lightningList[al-1].xx,lightningList[al-1].yy,1,image_yscale*0.25,lightningList[al-1].ang,c_white,1)
}