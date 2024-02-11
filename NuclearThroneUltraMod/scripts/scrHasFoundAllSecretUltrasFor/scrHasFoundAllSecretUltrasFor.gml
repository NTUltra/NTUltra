///scrHasFoundAllSecretUltrasFor();
// /@description
///@param
function scrHasFoundAllSecretUltrasFor(theRace){
	with UberCont
	{
		switch(theRace)
		{
			case 1://FISH
				return ctot_secret_ultra_taken[1] > 0
			case 2://CRYSTAL
				return ctot_secret_ultra_taken[2] > 0
			case 3://EYES
				return ctot_secret_ultra_taken[3] > 0 && ctot_secret_ultra_taken[34] > 0
			case 4://MELTING
				return ctot_secret_ultra_taken[4] > 0
			case 5://PLANT
				return ctot_secret_ultra_taken[5] > 0 && ctot_secret_ultra_taken[33] > 0
			case 6://YV
				return ctot_secret_ultra_taken[6] > 0 && ctot_secret_ultra_taken[35] > 0 && ctot_secret_ultra_taken[36] > 0
			case 7://STEROIDS
				return ctot_secret_ultra_taken[7] > 0
			case 8://ROBOT
				return ctot_secret_ultra_taken[8] > 0 && ctot_secret_ultra_taken[37] > 0
			case 9://CHICKEN
				return ctot_secret_ultra_taken[9] > 0 && ctot_secret_ultra_taken[10] > 0
			case 10://REBEL
				return ctot_secret_ultra_taken[11] > 0
			case 11://HUNTER
				return ctot_secret_ultra_taken[12] > 0
			case 12://YC
				return ctot_secret_ultra_taken[13] > 0
			case 13://SHEEP
				return ctot_secret_ultra_taken[14] > 0 && ctot_secret_ultra_taken[15] > 0
			case 14://PANDA
				return ctot_secret_ultra_taken[16] > 0
			case 15://ATOM
				return ctot_secret_ultra_taken[17] > 0
			case 16://VIKING
				return ctot_secret_ultra_taken[18] > 0 && ctot_secret_ultra_taken[19] > 0
			case 17://Weapon Smith
				return ctot_secret_ultra_taken[20] > 0 && ctot_secret_ultra_taken[21] > 0
			case 18://ANGEL
				return ctot_secret_ultra_taken[22] > 0
			case 19://SKELETON
				return ctot_secret_ultra_taken[23] > 0 && ctot_secret_ultra_taken[24] > 0
			case 20://BUSINESSHOG
				return ctot_secret_ultra_taken[25] > 0
			case 21://HORROR
				return ctot_secret_ultra_taken[0] > 0
			case 22://ROGUE
				return ctot_secret_ultra_taken[26] > 0
			case 23://FROG
				return ctot_secret_ultra_taken[27] > 0
			case 24://ELEMENTOR
				return ctot_secret_ultra_taken[28] > 0
			case 25://DOCTOR
				return ctot_secret_ultra_taken[29] > 0
			case 26://GOOD O'L HUMPHRY
				return ctot_secret_ultra_taken[30] > 0
			case 27://HANDS
				return ctot_secret_ultra_taken[31] > 0 && ctot_secret_ultra_taken[32] > 0
		}
	}
}