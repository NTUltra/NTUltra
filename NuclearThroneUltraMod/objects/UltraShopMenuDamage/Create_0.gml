image_speed=0;

instance_create(x,y,ShopSelector);

drawx = x
drawy = y

cost=0.50;
cost*=ShopWheel.discount;
txt = "DAMAGE ON SCREEN#RADS: "+string(round(cost*100))+"%";