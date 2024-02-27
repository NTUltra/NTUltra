function scrTranslateUltraToSecretStat(chosenUltra, bskin) {
	switch(chosenUltra)
	{
		case 0: return 0;
		case 4: return 1;
		case 6: return 2;
		case 9: return 3;
		case 13: return 4;
		case 20: return 5;
		case 23: return 6;
		case 27: return 7;
		case 29: return 8;
		case 33: return 9;
		case 35: return 10;
		case 39: return 11;
		case 43: return 12;
		case 47: return 13;
		case 50: return 14;
		case 51: return 15;
		case 55: return 16;
		case 59: return 17;
		case 61: return 18;
		case 62: return 19;
		case 66: return 20;
		case 68: return 21;
		case 72: return 22;
		case 74: return 23;
		case 76: return 24;
		case 77: return 25;
		case 87: return 26;
		case 92: return 27;
		case 93: return 28;
		case 97: return 29;
		case 104: return 30;
		case 19: return 33;
		case 10: return 34;
		case 21: return 35;
		case 24: return 36;
		case 30: return 37;
		case 106:
			if bskin == 1
				return 31;
			else
				return 32;
		case 109:
			return maxsecretultra;
	}
	return -1;
}
