//Determines how long a half moves in a direction
if (increm >= 10)//number of frames for the half to move
{
    instance_destroy(id);
}
else 
{
    id.image_alpha -= .1;
    increm+=1;
}
