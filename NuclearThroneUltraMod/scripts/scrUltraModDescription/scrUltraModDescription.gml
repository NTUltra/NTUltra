///scrUltraModDescription();
// /@description
///@param
function scrUltraModDescription(um){
	var umn = "";
	switch (um)
	{
		case ultramods.nothing:
			umn = "UNKNOWN";
		break;
		case ultramods.bulletShotgun:
			umn = @"SWAPS
			BULLETS <WITH> PELLETS
			DIRECTOR BULLETS <WITH> DIRECTOR PELLETS
			FLAME PELLETS <WITH> FLAME BULLETS
			ULTRA BULLETS <WITH> ULTRA PELLETS
			HEAVY BULLETS <TO> HEAVY PELLETS
			SLUGS <TO> THREE FAT BULLETS
			FAT BULLET <WITH> SLUGS
			HEAVY SLUGS <TO> THREE HEAVY BULLETS
			ULTRA SLUGS <TO> 4 ULTRA BULLETS"
		break;
		case ultramods.laserBullet:
			umn = @"SWAPS
			BULLETS <TO> SMALL LASERS
			BOUNCER LASERS <TO> 2 BOUNCER BULLETS
			BOUNCER BULLETS <TO> BOUNCER LASERS
			HEAVY BULLETS <WITH> LASER
			MEGA LASERS <TO> 2 FAT BULLETS
			FAT BULLETS <TO> MEGA LASERS
			ULTRA LASERS <TO> 2 ULTRA BULLETS
			ULTRA BULLETS <TO> 3 ULTRA LASERS
			ULTRA MEGA LASERS <TO> 4 ULTRA BULLETS"
		break;
		case ultramods.lightningKraken:
			umn = @"SWAPS
			LIGHTNING <WITH> KRAKEN"
		break;
		case ultramods.toxicFire:
			umn = @"SWAPS
			TOXIC <WITH> FIRE
			ULTRA TOXIC <WITH> ULTRA FIRE"
		break;
		case ultramods.shotgunElectro:
			umn = @"SWAPS
			SHOTGUN PELLETS <WITH> ELECTRO BALLS
			FLAME SHOTGUN PELLETS <WITH> FLAME ELECTRO BALLS
			HEAVY SLUGS <WITH> ELECTRO CANNON BALLS"
		break;
		case ultramods.plasmaBolt:
			umn = @"SWAPS
			PLASMA <WITH> BOLTS"
		break;
		case ultramods.plasmaRocket:
			umn = @"SWAPS
			PLASMA <WITH> ROCKETS"
		break;
		case ultramods.bloodMelee:
			umn = @"SWAPS
			MELEE SLASHES/SHANKS <WITH> 
			HEAVY BLOOD BULLETS
			
			STRONGER/ENERGY SLASHES/SHANKS <WITH> 
			HEAVY BLOOD BULLETS AND BLOOD EXPLOSIONS
			
			ULTRA SLASHES/SHANKS <WITH> UTLRA BLOOD BULLETS
			BLOOD EXPLOSIONS <WITH> SLASHES"
		break;
		
		case ultramods.rocketBolt:
			umn = @"SWAPS
			ROCKETS <WITH> BOLTS
			BOUNCER PLASMA <WITH> BOUNCER ROCKETS
			NUKES <TO> HEAVY BOLT & 2 SPLINTERS
			ULTRA ROCKETS <TO> ULTRA BOLTS & 2 SPLINTERS"
		break;
		case ultramods.laserBolt:
			umn = @"SWAPS
			LASERS <WITH> BOLTS
			BOUNCER LASERS <WITH> BOUNCER BOLTS
			MEGA LASERS <WITH> HEAVY BOLTS
			ULTRA BOLTS <TO> 3 ULTRA LASERS"
		break
		case ultramods.seekerMissile:
			umn = @"SWAPS
			SEEKERS <WITH> MISSILES"
		break;
		case ultramods.shotgunBolt:
			umn = @"SWAPS
			ANY BOLT TYPE <WITH> ANY SHOTGUN TYPE"
		break;
		case ultramods.boltBullet:
			umn = @"SWAPS
			SPLINTERS <WITH> BULLETS
			ULTRA SPLINTERS <WITH> ULTRA BULLETS
			FLAME SPLINTERS <WITH> FLAME BULLETS"
		break;
	
		case ultramods.bulletPlasma:
			umn = @"SWAPS
			BULLETS <WITH> MINI PLASMA
			HEAVY BULLETS <WITH> PLASMA
			BOUNCER BULLETS <WITH> BOUNCER PLASMA
			FAT BULLETS <TO> PLASMA CANNON BALLS"
		break;
		case ultramods.splinterElectro:
			umn = @"SWAPS
			SPLINTERS <WITH> ELECTRO"
		break;
		
		case ultramods.toxicSwarm:
			umn = @"SWAPS
			TOXIC <WITH> SWARM"
		break;//hesitant about this one but lets just play it out for an update
		case ultramods.bloodExplosionExplosion:
			umn = @"SWAPS
			BLOOD EXPLOSIONS <WITH> EXPLOSIONS"
		break;
		case ultramods.snowSwarm:
			umn = @"SWAPS
			FROST <WITH> SWARM"
		break;
		case ultramods.morphFire:
			umn = @"SWAPS
			MORPH <WITH> FIRE
			ULTRA MORPH <WITH> ULTRA FIRE"
		break;
		case ultramods.lightningPellet:
			umn = @"SWAPS
			LIGHTNING <WITH> SHOTGUN PELLET"
		break;
		
		case ultramods.bladeGrenade:
			umn = @"SWAPS
			BLADES <WITH> GRENADES"
		break;
		
		default:
			umn = "UNKNOWN";
		break;
	}
	return umn;
}