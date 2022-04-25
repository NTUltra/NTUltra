image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.35;
cost*=ShopWheel.discount;
txt = "ARMOUR#RADS: "+string(cost*100)+"%";