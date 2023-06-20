/// @description AfterImage
if speed > 2
{
	ds_list_insert(afterImage,0,{
		sp : sprite_index,
		ii: image_index,
		xs: right,
		time: afterImageDuration,
		xx: x,
		yy: y
	});
}
var mySize = 	ds_list_size(afterImage);
for (var i = 0; i < mySize; i++) {
	afterImage[| i].time --;
	if (afterImage[| i].time < 0)
	{
		ds_list_delete(afterImage,i)
	}
}
var mySize = 	ds_list_size(afterImage);
if (mySize > afterImageMax)
{
	ds_list_delete(afterImage,mySize);
}
alarm[7] = afterImageDelay;