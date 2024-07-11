/// @description Sheep
var rpt = 1;
if (ds_list_size(sheep) < 3)
rpt = 3;

if (ds_list_size(sheep) < 8)
{
	repeat(rpt)
	{
		ds_list_add(sheep,{
			spr: choose(sprSheepIdleA,sprSheepIdleA,sprSheepIdleB,sprSharpStress,sprSheepWalk,sprDiscoCrown,sprLoveBomb,
			choose(sprPotatoCannon,sprSheepIdleA,sprDiscoCrown,sprSheepWalk,sprSheepIdleB,sprMutant5CIdle,sprLoveBomb,sprSharpStress,sprMutant9HeadlessWalk,sprPotato,sprDisc,sprLollipop
			,sprBanditMushroom,sprBone,sprMutant6Idle,sprPandaMenu)),
			xscl: choose(2,-2),
			yscl: choose(2,-2),
			xx: random_range(-8,camera_get_view_width(view_camera[0]))+8,
			yy: random_range(-8,camera_get_view_height(view_camera[0]))+8,
			xspd: random_range(-4,4),
			yspd: random_range(-4,4),
			rot: random(360),
			rotationspeed: random_range(-20,20),
			time: random_range(20,50),
			alpha: 0
		});
	}
}
alarm[1] = 7 + random(22);