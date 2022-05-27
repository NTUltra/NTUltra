///scrUltraModName();
// /@description
///@param
function scrUltraModName(um){
	var umn = [];
	switch (um)
	{
		case ultramods.nothing:
			umn[0] = "UNKNOWN";
			umn[1] = "ULTRA MOD";
		break;
		case ultramods.bulletShotgun:
			umn[0] = "BULLET";
			umn[1] = "SHOTGUN";
		break;
		case ultramods.laserBullet:
			umn[0] = "LASER";
			umn[1] = "BULLET";
		break;
		case ultramods.lightningKraken:
			umn[0] = "LIGHTNING";
			umn[1] = "KRAKEN";
		break;
		case ultramods.toxicFire:
			umn[0] = "TOXIC";
			umn[1] = "FIRE";
		break;
		
		case ultramods.shotgunElectro:
			umn[0] = "SHOTGUN";
			umn[1] = "ELECTRO";
		break;
		case ultramods.plasmaBolt:
			umn[0] = "PLASMA";
			umn[1] = "BOLT";
		break;
		case ultramods.plasmaRocket:
			umn[0] = "PLASMA";
			umn[1] = "ROCKET";
		break;
		case ultramods.bulletPlasma:
			umn[0] = "BULLET";
			umn[1] = "PLASMA";
		break;
		
		case ultramods.bloodMelee:
			umn[0] = "BLOOD";
			umn[1] = "MELEE";
		break;
		
		case ultramods.rocketBolt:
			umn[0] = "ROCKET";
			umn[1] = "BOLT";
		break;
		case ultramods.laserBolt:
			umn[0] = "LASER";
			umn[1] = "BOLT";
		break
		case ultramods.shotgunBolt:
			umn[0] = "SHOTGUN";
			umn[1] = "BOLT";
		break

		case ultramods.seekerMissile:
			umn[0] = "SEEKER";
			umn[1] = "MISSILE";
		break;

		case ultramods.splinterBullet:
			umn[0] = "SPLINTER";
			umn[1] = "BULLET";
		break;
		case ultramods.splinterElectro:
			umn[0] = "SPLINTER";
			umn[1] = "ELECTRO";
		break;
		
		
		case ultramods.toxicSwarm:
			umn[0] = "TOXIC";
			umn[1] = "SWARM";
		break;
		case ultramods.bloodExplosionExplosion:
			umn[0] = "BLOOD EXPLOSION";
			umn[1] = "EXPLOSION";
		break;
		case ultramods.snowSwarm:
			umn[0] = "SNOW";
			umn[1] = "SWARM";
		break;
		case ultramods.morphFire:
			umn[0] = "MORPH";
			umn[1] = "FIRE";
		break;
		case ultramods.lightningPellet:
			umn[0] = "LIGHTNING";
			umn[1] = "SHOTGUN PELLET";
		break;
		
		case ultramods.bladeGrenade:
			umn[0] = "BLADE";
			umn[1] = "GRENADE";
		break;
		
		default:
			umn[0] = "UNKNOWN";
			umn[1] = "ULTRA MOD";
		break;
	}
	return umn;
}