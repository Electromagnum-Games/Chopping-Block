if (global.chopped == global.to_be_chopped)
{    
    if(global.meat != 1)
    {
        scr_text("You must have one and only one meat.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.veg == 3)
    {
        scr_text("A dish cannot have 3 vegetables.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.fruit >= global.veg && global.fruit != 0 && global.veg != 0)
    {
        scr_text("The number of vegetables in a dish must always be greater than the number of fruits.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.carrot > 5)
    {
        scr_text("A dish cannot have more than 5 carrots.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.potato > 0 && global.potato != global.carrot)
    {
        scr_text("If a dish has potatoes, it must have an equal number of carrots.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.tomato > 0 && (global.tomato%2)==0)
    {
        scr_text("If a dish has tomatoes, it must have an odd number of them.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.lemon > 0 && global.potato > 0)
    {
        scr_text("Lemon cannot be paired with potato.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.chicken > 0 && global.tomato != 0 && global.carrot == 0)
    {
        scr_text("In a chicken dish, for every tomato, there must be two carrots.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.chicken > 0 && global.tomato !=0 && global.carrot != 0 && (global.carrot/global.tomato)<2)
    {
        scr_text("In a chicken dish, for every tomato, there must be two carrots.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else if (global.beef > 0 && global.lemon > 0 && global.tomato > 0)
    {
        scr_text("Beef goes with tomato or lemon, not both.",3,350,300);
        q = instance_create(960,800,btn_restart);
        q.image_xscale *= 0.2;
        q.image_yscale *= 0.2
    }
    
    else 
    {
        instance_destroy(obj_food);
        scr_text("Congrats!",3,928,540)
        n = instance_create(960,896,btn_nextlevel);
        n.image_xscale = 0.2;
        n.image_yscale = 0.2;
        scr_levelcompletecheck()
    }
}
