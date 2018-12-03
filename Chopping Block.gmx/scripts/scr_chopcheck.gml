switch (global.to_be_chopped - global.chopped)
{
    case 7: a = instance_create(x+250,y,obj_chop7); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 6: 
        if (instance_exists(obj_chop7))
        {
            instance_destroy(obj_chop7);
        }
        a = instance_create(x+250,y,obj_chop6); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 5: 
        if (instance_exists(obj_chop6))
        {
            instance_destroy(obj_chop6);
        }
        a = instance_create(x+250,y,obj_chop5); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 4: 
        if (instance_exists(obj_chop5))
        {
            instance_destroy(obj_chop5);
        }
        a = instance_create(x+250,y,obj_chop4); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 3:
        if (instance_exists(obj_chop4))
            {
                instance_destroy(obj_chop4);
            }
        a = instance_create(x+250,y,obj_chop3); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 2:
        if (instance_exists(obj_chop3))
            {
                instance_destroy(obj_chop3);
            }
        a = instance_create(x+250,y,obj_chop2); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 1:
        if (instance_exists(obj_chop2))
            {
                instance_destroy(obj_chop2);
            }
    a = instance_create(x+250,y,obj_chop1); a.image_xscale = 0.2; a.image_yscale = 0.2; break;
    case 0:
        if (instance_exists(obj_chop1))
            {
                instance_destroy(obj_chop1);
            }
    instance_destroy(id); instance_destroy(obj_exclamation); break;    
    default: break;
}
