var area;
if instance_exists(Player)
{
	area = Player.area
	if scrIsCrown(25)
	{	
		instance_destroy(id,false);
		if !place_meeting(x,y,FloorExplo)
			instance_create(x,y,FloorExplo);
		exit;
	}	
}
else area = BackCont.area
if area==104
area=103;

alarm[0]=1;
if instance_exists(SurvivalWave)//scrIsGamemode(25) && !instance_exists(Vlambeer))
{
	topspr=sprWall116Top;
	outspr=sprWall116Out;
	sprite_index=sprWall116Bot;
}
else
switch (area)
{
case 0:
case 119:
topspr=sprWall0Top;
outspr=sprWall0Out;
sprite_index=sprWall0Bot;
break;

case 1:
topspr=sprWall1Top;
outspr=sprWall1Out;
sprite_index=sprWall1Bot;
break;

case 2:
topspr=sprWall2Top;
outspr=sprWall2Out;
sprite_index=sprWall2Bot;
break;

case 3:
topspr=sprWall3Top;
outspr=sprWall3Out;
sprite_index=sprWall3Bot;
break;

case 4:
topspr=sprWall4Top;
outspr=sprWall4Out;
sprite_index=sprWall4Bot;
break;

case 5:
topspr=sprWall5Top;
outspr=sprWall5Out;
sprite_index=sprWall5Bot;
break;

case 6:
topspr=sprWall6Top;
outspr=sprWall6Out;
sprite_index=sprWall6Bot;
break;

case 7:
topspr=sprWall7Top;
outspr=sprWall7Out;
sprite_index=sprWall7Bot;
break;

case 8:
topspr=sprWall8Top;
outspr=sprWall8Out;
sprite_index=sprWall8Bot;
break;

case 9:
topspr=sprWall9Top;
outspr=sprWall9Out;
sprite_index=sprWall9Bot;
break;

case 10:
topspr=sprWall10Top;
outspr=sprWall10Out;
sprite_index=sprWall10Bot;
break;

case 100:
topspr=sprWall100Top;
outspr=sprWall100Out;
sprite_index=sprWall100Bot;
break;

case 102:
topspr=sprWall102Top;
outspr=sprWall102Out;
sprite_index=sprWall102Bot;
break;

case 103:
topspr=sprWall103Top;
outspr=sprWall103Out;
sprite_index=sprWall103Bot;
break;

case 105:
topspr=sprWall105Top;
outspr=sprWall105Out;
sprite_index=sprWall105Bot;
break;

case 106:
topspr=sprWall106Top;
outspr=sprWall106Out;
sprite_index=sprWall106Bot;
break;

case 107:
topspr=sprWall107Top;
outspr=sprWall107Out;
sprite_index=sprWall107Bot;
break;

case 101:
topspr=sprWall101Top;
outspr=sprWall101Out;
sprite_index=sprWall101Bot;
break;

case 108:
topspr=sprWall108Top;
outspr=sprWall108Out;
sprite_index=sprWall108Bot;
break;

case 109:
topspr=sprWall109Top;
outspr=sprWall109Out;
sprite_index=sprWall109Bot;
break;

case 110:
topspr=sprWall110Top;
outspr=sprWall110Out;
sprite_index=sprWall110Bot;
break;

case 111:
topspr=sprWall111Top;
outspr=sprWall111Out;
sprite_index=sprWall111Bot;
break;

case 112:
topspr=sprWall112Top;
outspr=sprWall112Out;
sprite_index=sprWall112Bot;
break;

case 113:
topspr=sprWall0Top;
outspr=sprWall0Out;
sprite_index=sprWall0Bot;
break;

case 114:
topspr=sprWall114Top;
outspr=sprWall114Out;
sprite_index=sprWall114Bot;
break;

case 115:
topspr=sprWall115Top;
outspr=sprWall115Out;
sprite_index=sprWall115Bot;
break;

case 116:
topspr=sprWall116Top;
outspr=sprWall116Out;
sprite_index=sprWall116Bot;
break;

case 117:
topspr=sprWall117Top;
outspr=sprWall117Out;
sprite_index=sprWall117Bot;
break;

case 118:
topspr=sprWall118Top;
outspr=sprWall118Out;
sprite_index=sprWall118Bot;
break;

case 120:
topspr=sprWall120Top;
outspr=sprWall120Out;
sprite_index=sprWall120Bot;
break;

case 121:
topspr=sprWall121Top;
outspr=sprWall121Out;
sprite_index=sprWall121Bot;
break;

case 122:
topspr=sprWall122Top;
outspr=sprWall122Out;
sprite_index=sprWall122Bot;
break;

case 123:
topspr=sprWall123Top;
outspr=sprWall123Out;
sprite_index=sprWall123Bot;
break;

case 124:
topspr=sprWall124Top;
outspr=sprWall124Out;
sprite_index=sprWall124Bot;
break;

case 125:
topspr=sprWall125Top;
outspr=sprWall125Out;
sprite_index=sprWall125Bot;
break;

case 126:
topspr=sprWall126Top;
outspr=sprWall126Out;
sprite_index=sprWall126Bot;
break;

case 127:
topspr=sprWall127Top;
outspr=sprWall127Out;
sprite_index=sprWall127Bot;
break;

case 128:
topspr=sprWall128Top;
outspr=sprWall128Out;
sprite_index=sprWall128Bot;
break;

case 129:
topspr=sprWall129Top;
outspr=sprWall129Out;
sprite_index=sprWall129Bot;
break;

case 130:
topspr=sprWall130Top;
outspr=sprWall130Out;
sprite_index=sprWall130Bot;
break;

case 131:
topspr=sprWall131Top;
outspr=sprWall131Out;
sprite_index=sprWall131Bot;
break;

case 132:
topspr=sprWall132Top;
outspr=sprWall132Out;
sprite_index=sprWall132Bot;
break;

case 133:
topspr=sprWall133Top;
outspr=sprWall133Out;
sprite_index=sprWall133Bot;
break;

case 134:
topspr=sprWall134Top;
outspr=sprWall134Out;
sprite_index=sprWall134Bot;
break;

case 135:
topspr=sprWall135Top;
outspr=sprWall135Out;
sprite_index=sprWall135Bot;
break;

case 136:
topspr=sprWall136Top;
outspr=sprWall136Out;
sprite_index=sprWall136Bot;
break;

default:
topspr=sprWall0Top;
outspr=sprWall0Out;
sprite_index=sprWall0Bot;
break;

}
image_speed = 0 

image_index = choose(0,0,0,0,0,0,0,1,2)
if random(150) < 1 
	image_index = 3
else if area == 128 || area == 129
	image_index += choose(0,0,1);
	
image_index += choose(0,4)
topindex = choose(0,0,0,0,0,0,0,1,2)
if random(200) < 1 topindex = 3
topindex += choose(0,4)
outindex = choose(0,0,0,0,1,2,3,4)
outindex += choose(0,4)

l = 0
r = 0
w = 24
h = 24

//event_perform(ev_alarm,1);
alarm[1] = 1;