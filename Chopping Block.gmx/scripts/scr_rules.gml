if (global.chopped == global.to_be_chopped)
{
    instance_destroy(obj_food);
    instance_destroy(obj_text);
        
    if(global.meat != 1)
    {
        scr_text("Each dish must have exactly 1 meat.",3,600,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.veg == 3)
    {
        scr_text("A dish must not have exactly 3 vegetables.",3,500,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.fruit >= global.veg && global.fruit != 0 && global.veg != 0)
    {
        scr_text("A dish must always have more vegetables than fruits.",3,450,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.carrot > 5)
    {
        scr_text("A dish must not have more than 5 carrots.",3,700,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.potato > 0 && global.potato != global.carrot)
    {
        scr_text("If a dish contains potatoes, there must be an equal number of carrots.",3,250,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.tomato > 0 && (global.tomato%2)==0)
    {
        scr_text("There must always be an odd number of tomatoes.",3,850,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.lemon > 0 && global.potato > 0)
    {
        scr_text("Lemon cannot be paired with potato.",3,850,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.chicken > 0 && global.tomato != 0 && global.carrot == 0)
    {
        scr_text("In a dish with chicken, there must be at least 2 carrots for each tomato.",3,450,300);
        q = instance_create(800,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.chicken > 0 && global.tomato !=0 && global.carrot != 0 && (global.carrot/global.tomato)<2)
    {
        scr_text("In a dish with chicken, there must be at least 2 carrots for each tomato.",3,450,300);
        q = instance_create(800,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.beef > 0 && global.lemon > 0 && global.tomato > 0)
    {
        scr_text("A dish with beef may have either tomato or lemon, not both.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else 
    {
        scr_levelcompletecheck()
        if (room_get_name(room) != "rm_lev15")
        {
            scr_text("Congrats!",3,850,540)
            n = instance_create(960,896,btn_nextlevel);
            n.image_xscale = 0.2;
            n.image_yscale = 0.2;
        }
        else
        {
            scr_text("You Win!",3,850,540)
            n = instance_create(960,896,btn_menu);
            n.image_xscale = 0.2;
            n.image_yscale = 0.2;
        }
    }
}
