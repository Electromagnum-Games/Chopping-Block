switch (global.to_be_chopped - global.chopped)
{
    case 5: instance_create(x+160,y,obj_chop5); break;
    case 4: 
        if (instance_exists(obj_chop5))
        {
            instance_destroy(obj_chop5);
        }
        instance_create(x+160,y,obj_chop4); break;
    case 3:
        if (instance_exists(obj_chop4))
            {
                instance_destroy(obj_chop4);
            }
            instance_create(x+160,y,obj_chop3); break;
    case 2:
        if (instance_exists(obj_chop3))
            {
                instance_destroy(obj_chop3);
            }
            instance_create(x+160,y,obj_chop2); break;
    case 1:
        if (instance_exists(obj_chop2))
            {
                instance_destroy(obj_chop2);
            }
            instance_create(x+160,y,obj_chop1); break;
     case 0:
        if (instance_exists(obj_chop1))
            {
                instance_destroy(obj_chop1);
            }
        instance_destroy(id);    
    default: break;
}
