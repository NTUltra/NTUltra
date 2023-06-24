///scrAddToBGFXLayer();
// /@description
///@param
function scrAddToBGFXLayer(sprite, imageIndex, imageX, imageY, imageXscale, imageYscale, imageAngle, imageColour, imageAlpha){
	with BGFXLayer {
		ds_list_add(drawer,
			{
				spr: sprite,
				ii: imageIndex,
				xx: imageX,
				yy: imageY,
				xscale: imageXscale,
				yscale: imageYscale,
				angle: imageAngle,
				col: imageColour,
				alpha: imageAlpha,
				//sw: sprite_get_width(sprite) * imageXscale,
				//sh: sprite_get_height(sprite) * imageYscale,
			}
		);
	}
}