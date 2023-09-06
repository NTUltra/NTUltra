///TopDecalsLight();
// /@description
///@param
function TopDecalsLight(){
	if instance_exists(GenCont) && !place_meeting(x,y,TopDecal){
		if !place_free(x-32,y) and !place_free(x-64,y) and place_free(x,y) and random(5) < 1
		{
		instance_create(x-64+16,y+16,TopDecalLight)
		}

		if !place_free(x+32,y) and !place_free(x+64,y) and place_free(x,y) and random(5) < 1
		{
		instance_create(x+64+16,y+16,TopDecalLight)
		}

		if !place_free(x,y+32) and !place_free(x,y+64) and place_free(x,y) and random(5) < 1
		{
		instance_create(x+16,y+64+16,TopDecalLight)
		}

		if !place_free(x,y-32) and !place_free(x,y-64) and place_free(x,y) and random(5) < 1
		{
		instance_create(x+16,y-64+16,TopDecalLight)
		}

		}
}