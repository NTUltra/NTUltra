image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y
cost=0.25;
cost*=ShopWheel.discount;
txt = "WEAPON CHEST#RADS: "+string(round(cost*100))+"%";