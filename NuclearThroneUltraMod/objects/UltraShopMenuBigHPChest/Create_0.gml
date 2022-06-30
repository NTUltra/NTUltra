image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.65;
cost*=ShopWheel.discount;
txt = "BIG HP CHEST#RADS: "+string(round(cost*100))+"%";