///scrAddToCorpseCollector();
// /@description
///@param
function scrAddToCorpseCollector(sprite, imageIndex, imageX, imageY, imageXscale, corpseSize){
	with CorpseCollector {
		ds_list_add(corpses,
			{
				spr: sprite,
				ii: imageIndex,
				xx: imageX,
				yy: imageY,
				xscale: imageXscale,
				mySize: corpseSize,
			}
		);
	}
}