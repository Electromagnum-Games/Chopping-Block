///Add a translucent overlay. argument0 is which overlay
a = instance_create(x,y,argument0);
a.image_xscale *= 0.2;
a.image_yscale *= 0.2;
a.depth=-1
a.image_alpha=0.3;
