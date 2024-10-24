/// @description BlobTrail
var dir = random(360);
with instance_create(x + lengthdir_x(8,dir),y + lengthdir_y(8,dir),UltraInkBlob)
{
	scrCopyWeaponMod(other);
	speed = 0;
}
alarm[6] = blobTrail;