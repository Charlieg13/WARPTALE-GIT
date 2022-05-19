if place_meeting (x, y, obj_player) && !instance_exists(Obj_room_transition)
    {
	var inst = instance_create_depth(0, 0, -9999, Obj_room_transition);	
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
	}
