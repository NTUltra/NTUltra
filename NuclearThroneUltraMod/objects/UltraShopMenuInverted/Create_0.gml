image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.9;
cost*=ShopWheel.discount;
txt = "INVERTED PORTAL#RADS: "+string(round(cost*100))+"%";

canspawn=true;