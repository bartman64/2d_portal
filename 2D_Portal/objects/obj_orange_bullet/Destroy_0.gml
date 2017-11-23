//Destroy old portal
instance_destroy(obj_orange_portal);

//Creates new portal
var new_portal =  instance_create_layer(obj_player.hit_x_ ,obj_player.hit_y_ ,"Instances", obj_orange_portal);

//Set image orientation of the new portal
new_portal.image_angle = portal_orientation;