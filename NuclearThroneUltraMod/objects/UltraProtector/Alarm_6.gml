/// @description New connection bullet
alarm[5] = holdBulletTime;
connectionTime = 0;
wkick = 4;
myConnectionBullet = instance_create(x,y,GhostGuardianBullet);
with myConnectionBullet
	ownerAngleRotationSpeed *= 2;