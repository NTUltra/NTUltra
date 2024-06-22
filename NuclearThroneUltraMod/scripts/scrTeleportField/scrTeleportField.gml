///scrTeleportField();
// /@description
///@param
function scrTeleportField(otherTeleport, movedEntities, shouldMove, isHitme = false)
{
	if !array_contains(movedEntities,id)
	{
		snd_play(sndAtomTeleporationFieldTeleport,0.2);
		var xOffset = other.x - x;
		var yOffset = other.y - y;
		var tx = otherTeleport.x - xOffset;
		var ty = otherTeleport.y - yOffset;
		var hitWalls = ds_list_create();
		var xs = image_xscale;
		var ys = image_yscale;
		image_xscale *= 1.5;
		image_yscale *= 1.5;
		var al = instance_place_list(tx,ty,WallHitMe,hitWalls,false);
		for (var i = 0; i < al; i++)
		{
			with hitWalls[| i] {
				instance_destroy();
				instance_create(x,y,FloorExplo);
			}
		}
		image_xscale = xs;
		image_yscale = ys;
		ds_list_destroy(hitWalls);
		var msk = mask_index;
		mask_index = mskNoCollision;
		with instance_create_depth(x,y,depth,TeleportationFx)
		{
			targetX = tx;
			targetY = ty;
			sprite_index = other.sprite_index;
			image_index = other.image_index;
			image_angle = other.image_angle;
			image_yscale = other.image_yscale;
			if isHitme
				image_xscale = other.right;
			else
				image_xscale = other.image_xscale;
			event_user(0);
		}
		instance_create(x,y,Smoke);
		instance_create(tx,ty,Smoke);
		x = tx;
		y = ty;
		snd_play(sndAtomTeleporationFieldTeleport,0.2);
		scrForcePosition60fps();
		with instance_create(x,y,TeleportMaskReset)
		{
			target = other.id;
			targetMask = msk;	
		}
		//mask_index = msk;
		if (shouldMove)
		{
			//direction = point_direction(otherTeleport.x,otherTeleport.y,x,y)
			motion_add(direction,1);
		}
		movedEntities[array_length(movedEntities)] = id;
	}
	return movedEntities;
}