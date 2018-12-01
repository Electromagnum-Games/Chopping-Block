if(global.meat != 1)
{
    scr_text("You must have one and only one meat.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.veg == 3)
{
    scr_text("A dish cannot have 3 vegetables.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.fruit >= global.veg && global.fruit != 0)
{
    scr_text("The number of vegetables in a dish must always be greater than the number of fruits.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.carrot > 5)
{
    scr_text("A dish cannot have more than 5 carrots.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.potato > 0 && global.potato != global.carrot)
{
    scr_text("If a dish has potatoes, it must have an equal number of carrots.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.tomato > 0 && (global.tomato%2)==0)
{
    scr_text("If a dish has tomatoes, it must have an odd number of them.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.lemon > 0 && global.potato > 0)
{
    scr_text("Lemon cannot be paired with potato.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.chicken > 0 && global.tomato != 0 && global.carrot == 0)
{
    scr_text("In a chicken dish, for every tomato, there must be two carrots.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.chicken > 0 && global.tomato !=0 && global.carrot != 0 && (global.carrot/global.tomato)<2)
{
    scr_text("In a chicken dish, for every tomato, there must be two carrots.",3,350,300);
    instance_create(500,500,btn_restart);
}

else if (global.beef > 0 && global.lemon > 0 && global.tomato > 0)
{
    scr_text("Beef goes with tomato or lemon, not both.",3,350,300);
    instance_create(500,500,btn_restart);
}

else 
{
    scr_text("Congrats!",3,350,300)
    instance_create(250,500,btn_menu);
    instance_create(500,500,btn_nextlevel);
}
