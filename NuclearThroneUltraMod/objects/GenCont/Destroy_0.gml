room_speed=UberCont.normalGameSpeed;
if UberCont.opt_gamemode == 8
{
	with Floor
	{
		instance_destroy(id,false);	
	}
	with Wall
	{
		instance_destroy(id,false);	
	}
	with Top
	{
		instance_destroy(id,false);	
	}
	with TopSmall
	{
		instance_destroy(id,false);	
	}
	instance_create(x,y,VanFan);
}
if instance_exists(Player)
{
if Player.crown=18//DISCOOOO CROWN
room_speed=35;
    with Player{
    
    if area != 100 && ultra_got[87] && !altUltra//Rogue new captain ultra summon rogue idpd
    {
	    with BackCont
			alarm[5]=10+random(120);
    }
    
    if ultra_got[58]
		alarm[9]=60;
    /*
    if ultra_got[79]==1&&race=21//Horror Ultra E
    {
		ultra_got[79]=0;
		skillsChosen=10;
    }*/
    
    if ultra_got[69]//Angel protector
    instance_create(x,y,AngelDeflect);
    
    if area=1&&subarea<3
    {oasisskip=instance_number(chestprop);
    if instance_exists(RadChest)
    oasisskip+=1;}
    else oasisskip=-1;
    
	if (random(100)<invertedchance+min(10,loops) || wep == 375 || bwep == 375 || cwep == 375)//Inversion magnet
	{
	    if ( (area=1&&subarea<3)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=105
	    }
		else if ( (area==10&&subarea<3)  )//Inv Savanna
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		else if ( (area==101&&subarea<3)  )//Inv Oasis
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		else if ( (area==103)  )//Inv mansion
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		else if ( (area==114&&subarea<2)  )//Inv Jungle
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		else if ( (area==117&&subarea<2)  )//Inv mushroom
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( area=2  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=105
	    }
	    else if ( (area=3&&subarea<3)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=106
	    }
	    else if ( area=4 &&  subarea < 2)
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=106
	    }
	    else if ( (area=5&&subarea<3)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( area=6&&subarea<2  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( (area=7&&subarea<2)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( (area=8&&subarea<3)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		else if ( (area=9&&subarea<3)  )
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
		
	}

    
    
    
    if skill_got[28]//RAGE
    {
    instance_create(x,y,Rage);
    //hammerheadtimer=0 no real need for this it wont occur that you touch the wall 10 steps before leaving level    
    }    
    if skill_got[26]//HAMMER HEAD
    {
		hammerheadcounter = 30;
		if race=25
		{
			hammerheadcounter += 5;
		}
	
    }
    if ultra_got[3]//FISH's PARTNER
    {
		if !instance_exists(Partner)
			instance_create(x,y,Partner);
    }

    if ultra_got[48]//Yung Cuz Ultra D
    {
    lag=3;
    }
    
    if ultra_got[2]=1//fish ultra B gun warrant
    {
    instance_create(x,y,GunWarrant);
    alarm[2] = 210;
    }
    
    if skill_got[25]//strong spirit
    {
    strongspiritused=false;
    }
    isAlkaline = true;
    if ultra_got[37]==1//Personal Guard REBEL ULTRA A
    {
		with instance_create(x,y,Ally)
			name = "Guard Bob";
		with instance_create(x,y,Ally)
			name = "Guard Weave";
    }
    if race=13
    {justAsheep=true;}
    BackCont.enemiesInStartLevel=instance_number(enemy);
    
    if UberCont.opt_gamemode == 34 && area == 1//HARD MODE
	{
		var t = 30;
		if subarea == 1 && loops < 1
			t = 120;
		with enemy
		{
			if alarm[1]>0
			{
				alarm[1] += t;
			}
		}
	}
    if skill_got[29]//insomnia
    {
		var t = 180;
	    if race = 25
	    {
			t = 220;
	    }
		if justAsheep
		{
			/*
			insomniaEnemyList = [];
			with enemy {
				if alarm[1]>0
				{
					other.insomniaEnemyList[array_length(other.insomniaEnemyList)] = id;
				}
			}*/
		}
		else
		{
		    with enemy
		    {
			    if alarm[1]>0
				{
					alarm[1]+=t;
					with instance_create(x,y,Snooze)
					{
						owner = other.id;
						yoffset = other.sprite_height*0.5 - 4;
					}
				}
		    }
		}
		//Store this list of enemies to put to sleep when sheep passive is done
    }
    else if loops < 5
    {
	    //making it easier
	    with enemy
	    {
			if alarm[1]>0
				alarm[1]+=50;
	    }
    
    }
	if loops > 8
	{
		with enemy
		{
			if alarm[1] > 11
			{
				alarm[1] -= 10;
			}
		}
	}
    }
    
    
    
    
    
    if UberCont.opt_gamemode=19&&instance_exists(Floor)//DISCS!
    {
    repeat(UberCont.opt_discs)
    {
    
    with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(300)-150,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(300)-150,Floor)
    {
    
	    with instance_create(x+16,y+16,PermanentDisc)
			motion_add(random(360),2+random(5) )
    
    }
    
    
    }
    
    
    }
    
    if (Player.area == 1 && Player.subarea == 1)
	{
		if instance_exists(WeaponChest)
		{
			with Floor
			{
				if instance_exists(BigVultureSkull)
					continue;
				var xx = x+16;
				var yy = y+16;
				var t = instance_nearest(xx,yy,WeaponChest)
				var d = point_distance(xx,yy,t.x,t.y)
				if d < 160 && d > 32
					instance_create(x+16,y+8,BigVultureSkull)
			}
		}
		else
		{
			var tar = Player;
			if instance_exists(WeaponChest)
			{
				tar = WeaponChest;
			}
			var furthest = instance_furthest(tar.x,tar,Floor);
			var dir = point_direction(x,y,furthest.x,furthest.y)+random_range(120,-120);
			var len = 128+random(32);
			var nearestFloor = instance_nearest(tar.x+lengthdir_x(len,dir),tar.y+lengthdir_y(len,dir),Floor)
			with nearestFloor
			{
				instance_create(x+16,y+8,BigVultureSkull)
			}
		}
	}
}

with WepPickup
{
	persistent = false;
	x = Player.x
	y = Player.y
	if instance_exists(Floor) && !collision_point(x,y,Floor,false,false)
	{
		var f = instance_nearest(x,y,Floor)
		var o = 16;
		if f.object_index == FloorExplo
			o = 8;
		x = f.x+o;
		y = f.y+o;
	}
}

with PlayerAlarms//Recheck alarms for certain skills
	event_user(0);

with UberCont
	wallsBroken = 0;
	