if(global.meat != 1)
{
    scr_text("You must have one and only one meat.",3,350,300);
    instance_create(500,500,btn_tryagain);
}

else if (global.veg == 3)
{
    scr_text("A dish cannot have 3 vegetables.",3,350,300);
    instance_create(500,500,btn_tryagain);
}

else if (global.fruit >= global.veg && global.fruit != 0)
{
    scr_text("The number of vegetables in a dish must always be greater than the number of fruits.",3,350,300);
    instance_create(500,500,btn_tryagain);
}
else 
{
    scr_text("Congrats!",3,350,300)
    room_goto_next()
}
