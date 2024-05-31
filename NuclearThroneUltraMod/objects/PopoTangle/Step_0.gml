if image_index>3 && !place_meeting(x,y,PopoSlowFieldFill){
{
	with instance_create(x,y,PopoSlowFieldFill)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
}}