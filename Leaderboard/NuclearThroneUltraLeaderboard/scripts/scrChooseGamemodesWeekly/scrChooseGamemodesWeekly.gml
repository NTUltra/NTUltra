///xxx();
// /@description
///@param
function scrChooseGamemodesWeekly(){
	var gamemode = [irandom_range(1,60),0,0];//41
	//Manual gamemode injection here
	var option = [];
	if gamemode == 26//Daily race
		gamemode = 1;
	switch (gamemode[0])
	{
		case 1://One weapon only
			option[0] = scrRollWeapons();
		break;
		case 3://NO HUD
			gamemode = [3,15,18];//NO HUD + NO MUTATIONS + NO ELITE POPO
		break
		case 4://WAll is lava
			gamemode = [46, 21, 0]//ANY START + LOOP START
			option[0] = scrRollSpecificWeapon();
		break;
		case 7://HARD MODE  + random areas + RANDOM SPAWNS
			gamemode = [34, 10, 45];
		break;
		case 8://VAN FAN -> HARD MODE + MULTI CROWN
			gamemode = [34, 43, 0];
		break;
		case 12://ZOMBIES + gore galore
			gamemode = [12, 39, 0];
		break;
		case 13: //rocket glove = NORMAL
			gamemode = [0,0,0];
		break;
		case 14: //Survival arena + disc room
			gamemode = [25, 19, 0]
			option[0] = irandom_range(2,12);//Disc amount
			option[1] = irandom_range(1,3);//Disc damage
		break;
		case 15://NO mutations
			gamemode = [46,34,0]; //ANY START + HARD MODE
			option[0] = scrRollSpecificWeapon();
		break;
		case 16://SPIKE TRAPS
			gamemode = [34, 30, 43]//HARD MODE + Ultra mutation start + Multi-Crown
		break;
		case 17://CHEATS
			gamemode = [34,32,0];//Hard mode + one hit wonder
		break;
		case 18: //NO ELITE IDPD
			gamemode = [25, 41, 30];//Survival arnea + Double enemy HP + Ultra mutation start
		break;
		case 19://Disc room
			option[0] = irandom_range(1,100);//Disc amount
			option[1] = irandom_range(1,20);//Disc damage
		break;
		case 21://Loop start
			gamemode = [21, 36, 43]//Loop Start + ultra mod start + multi crown
		break;
		case 24:
			gamemode = [0,0,0];
		break;
		case 26://Daily race
			gamemode = [22, 28, 0];//infinite levels + all mutations 
		break;
		case 27://Daily score
			gamemode = [41, 40, 30];//1 vs 1 + double enemy HP + ultra mutation start
		break;
		case 33://All Deflector
			gamemode = [25, 23, 22];//Survival arena, Random Character, Infinite leveling
		break;
		case 35://God frog
			gamemode = [34, 29, 39];//Hard mode Infinite levels, Gore galore
		break;
			
		case 37://Weekly
			gamemode = [20, 34, 36];//Agoraphobia + Hard mode + ultra mod start
		break;
		case 38://Seeded
			gamemode = [41, 29, 46] //Double enemy HP + Infinite ammo any start
			option[0] = scrRollSpecificWeapon();
		break
		case 39://Gore galore
			gamemode = [34,0,0] //JUST HARDMODE
		break;
		case 40://1vs1
			gamemode = [6, 22, 43]//Claustophobia + Infinite levels + multi crown
		break;
		case 41://Double enemy HP
			gamemode = [6, 19, 9]//Claustophobia + Disc room + casual mode
			option[0] = irandom_range(1,100);//Disc amount
			option[1] = irandom_range(1,20);//Disc damage
		break;
		case 42:
			gamemode = [46,0,0]//any start
			option[0] = scrRollSpecificWeapon();
		break;
		case 43:
			gamemode = [46,44,0]//any start alt spawns
			option[0] = scrRollSpecificWeapon();
		break;
		case 44:
			gamemode = [46,45,0]//any start random spawns 
			option[0] = scrRollSpecificWeapon();
		break;
		case 45:
			gamemode = [46,47,0]//any start double active
			option[0] = scrRollSpecificWeapon();
		break;
		case 46:
			gamemode = [46,41,0]//Anys tarting wep and double hp
			option[0] = scrRollSpecificWeapon();
		break;
		case 47:
			gamemode = [45,0,0]//random spawns
		break;
		case 48:
			gamemode = [44,0,0]//alt spawns
		break;
		case 49:
			gamemode = [48,0,0]//marksman
		break;
		case 50:
			gamemode = [48,3,41]//marksman No HUD and Double enemy hp
		break;
		case 51:
			gamemode = [46,43,0]//any start + multi crown
			option[0] = scrRollSpecificWeapon();
		break;
		case 52:
			gamemode = [46,47,23]//any start + Double active + random mutant
			option[0] = scrRollSpecificWeapon();
		break;
		case 53:
			gamemode = [46,36,34]//any start + ultra mod start + hard mode
			option[0] = scrRollSpecificWeapon();
		break;
		case 54:
			gamemode = [46,32,0]//any start + one hit
			option[0] = scrRollSpecificWeapon();
		break;
		case 55:
			gamemode = [46,25,0]//any start + survival arena
			option[0] = scrRollSpecificWeapon();
		break;
		case 56:
			gamemode = [25,0,22]//survival arena + infinite leveling
		break;
		case 57:
			gamemode = [46,21,22]//any start + Loop start + infinite levels
			option[0] = scrRollSpecificWeapon();
		break;
		case 58:
			gamemode = [46,34,45]//any start + hard mode + random spawns
			option[0] = scrRollSpecificWeapon();
		break;
		case 59:
			gamemode = [46,12,20]//any start + zombies + agoraphobia
			option[0] = scrRollSpecificWeapon();
		break;
		case 60:
			gamemode = [46,9,6]//Any start + casual + claus
			option[0] = scrRollSpecificWeapon();
		break;
	}
	return [gamemode, option];
}