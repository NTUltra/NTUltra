event_inherited();
raddrop = 4
depth = -2;
hurt_pitch_variation = 0;
existTime = 0;
maxSpeed = 5.5;
gun = sprBanditGun;
spr_idle = sprAllyAppear
spr_walk = sprAllyWalk
spr_hurt = sprAllyHurt
spr_dead = sprAllyDead

if instance_exists(Player)
{
	if Player.skill_got[5]
	{
		gun = sprBetterAllyGun
		raddrop += 1;
	}
	if Player.ultra_got[37]==1//Rebel Ultra A Personal Guard
		maxhealth=30;
	else
		maxhealth = 12;
	loops = Player.loops;
	if scrIsHardMode()
	{
		loops += 1;
		maxhealth += 2;
	}
	maxhealth += min(loops * 2,10);
	if Player.ultra_got[39] && !Player.altUltra
		alarm[3] = 30;
	if Player.bskin == 2 || Player.bskin == 5
	{
		if Player.altUltra || Player.bskin == 5
		{
			sprite_index = sprAllyGAppear;
			spr_idle = sprAllyGAppear
			spr_walk = sprAllyGWalk
			spr_hurt = sprAllyGHurt
			spr_dead = sprAllyGDead
		}
		else
		{
			sprite_index = sprAllyCAppear;
			spr_idle = sprAllyCAppear
			spr_walk = sprAllyCWalk
			spr_hurt = sprAllyCHurt
			spr_dead = sprAllyCDead
		}
	}
	else if Player.altUltra || Player.bskin == 3
	{
		sprite_index = sprAllyEAppear;
		spr_idle = sprAllyEAppear
		spr_walk = sprAllyEWalk
		spr_hurt = sprAllyEHurt
		spr_dead = sprAllyEDead
	}
}

meleedamage = 0
mySize = 1



image_speed = 0.4
friction = 0.4
right = choose(1,-1)
my_health = maxhealth

target = noone

team = 2

snd_hurt = sndBanditHit
snd_dead = sndBanditDie
snd_melee = sndMaggotBite

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 24*1.4
alarm[0] = 24*1.4//intro animation which is cool af
wkick = 0
alarm[2] = 120
with Portal
{
	if type == 1 && !inverted
	{
		other.alarm[2] = 5;
	}
}

name=choose(
"George","Bill","Jack","Henry","Bertha","Daniel","Willem","Bob","Weave","Issabell","Tom","Tami","Alex","Alexandra","Luther","Casandra",
"Susan","Mark","Hugh","Tina","Marcia","Gloria","Kelly","Becky","Tim","Ray","Stewie","Peter","Phillip","Jane","Doris","Jason",
"Donna","Josh","Frank","Samuel","Sarah","Kim","Julie","Nicole","Brian","Bruce","Rebecca","Micheal","Carl","Eugene","Walter","Brenda",
"Lars","Mary","Jeremy","Paul","Randy","Kevin","Martin","Jessica","Harold","Stimpy","Dopey","Momo","Appa","Poki",
/*rares*/choose("Big Tam","Chubbyemu","Kakujo","Tit","Kuntala","Bob Weaver","Jezus","God","Waifu","A dirty casual","Juul","TurtleMelon","Burrino","Worm Chase","Good O'l Humphry","Y.V. follower","Prophet","Little shit","Chad","Mr. Toiletpaper","<3","Please don't let me die"),/*rare*/
/*rares*/choose("butt","")/*rare*/
,"Heather","Joe","Barbara","Cheryl","Amy","Loki","Hughie","Iskal","Jasmine","Annie","Britta","Abed","Sheldon","Curtis","Geofrey","Emanuel","Chase",
"Johan","Laura","Gertrude","Pierce","Noel","Cora","Rex","Ann","Hilary","Elisa","Jerry","Helen","Daphne","Shanon","Curt","Jeff","Seymour","Helly",
"Carlos","Britta","Geoff","Dom","Matt","Matthew","Anna","Smith","Lucius","Britanny","Anita","Doug","Colin","Fernando","David","Shel","Spencer"
);
nameHover = 0;
path = path_add();
// currentPath = path;
pathLength = 4;
scrInitDrops(2);