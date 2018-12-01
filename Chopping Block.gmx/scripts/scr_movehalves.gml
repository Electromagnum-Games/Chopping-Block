//scr_movehalves(top_half,bottom_half,instance_id);
tophalf = instance_create(argument2.x,argument2.y,argument0);
bottomhalf = instance_create(argument2.x,argument2.y,argument1);

tophalf.depth = 1;
bottomhalf.depth = -1;

tophalf.image_xscale = tophalf.image_xscale*0.05;
tophalf.image_yscale = tophalf.image_yscale*0.05;

bottomhalf.image_xscale = bottomhalf.image_xscale*0.05;
bottomhalf.image_yscale = bottomhalf.image_yscale*0.05;
