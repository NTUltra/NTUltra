//grow = ((grow+1)*1.00005)-1
grow += 0.0003
image_xscale += grow
image_yscale += grow
grow = ((grow+1)*(1+0.0005*image_xscale))-1
if !instance_exists(SpiralCont) && !instance_exists(ThroneIISpiral)
grow *= 1.5
if image_xscale > 2 and (lanim < 0 or lanim > 6)
instance_destroy()

lanim += 0.2+random(0.3)

