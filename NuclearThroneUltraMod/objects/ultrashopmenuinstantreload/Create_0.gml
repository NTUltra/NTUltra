image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.05;
cost*=ShopWheel.discount;
txt = "INSTANT RELOAD YOUR WEAPONS#RADS: "+string(round(cost*100))+"%";