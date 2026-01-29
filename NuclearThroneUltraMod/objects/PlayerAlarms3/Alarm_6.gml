/// @description VOID SPHERES
var al = ds_list_size(voidSpheres);
if instance_exists(Player)
{
	var wantSphereAmount = Player.maxhealth - Player.my_health;
	wantSphereAmount += max(0,Player.maxarmour - Player.armour);
	wantSphereAmount *= 2;
	wantSphereAmount += 1;
	if wantSphereAmount == 0
	{
		ds_list_clear(voidSpheres);
		with VoidSphere
		{
			instance_destroy();	
		}
		al = ds_list_size(voidSpheres);
	}
	else if al < wantSphereAmount
	{
		ds_list_add(voidSpheres,instance_create(Player.x,Player.y,VoidSphere));
		al = ds_list_size(voidSpheres);
	}
	else if al > wantSphereAmount
	{
		var angStep = 360/al;
		with voidSpheres[| 0] {
			instance_destroy();
		}
		ds_list_delete(voidSpheres,0);
		al = ds_list_size(voidSpheres);
		alarm[6] = 4;
		voidSphereAngle += angStep;
		exit;
	}
	var angStep = 360/al;
	var ang = voidSphereAngle;
	var dis = voidSphereDistance;
	for (var i = 0; i < al; i++)
	{
		with voidSpheres[| i] {
			var tx = Player.x + lengthdir_x(dis,ang);
			var ty = Player.y + lengthdir_y(dis,ang);
			x = lerp(x,tx,0.25);
			y = lerp(y,ty,0.25);
		} 
		ang += angStep;
	}
	voidSphereAngle += voidSphereRotationSpeed;
}
else
{
	ds_list_clear(voidSpheres);
	with VoidSphere
	{
		instance_destroy();	
	}
}
alarm[6] = 1;