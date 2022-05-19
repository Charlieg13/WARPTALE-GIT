right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//xspd and yspd cos why not
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pause like seriously take it slow mannn
if instance_exists(Obj_pauser_cos_u_too_fast)
    {
	xspd = 0;
	yspd = 0;
	}



//set sprite????
mask_index = sprite[DOWN];

if yspd == 0
   {
   if xspd > 0 {face = RIGHT};
   if xspd < 0 {face = LEFT};
   }
if xspd > 0 and face == LEFT {face = RIGHT};
if xspd < 0 and face == RIGHT {face = LEFT};
if xspd == 0
   {
   if yspd > 0 {face = DOWN};
   if yspd < 0 {face = UP};
   }
if yspd > 0 and face == UP {face = DOWN};
if yspd < 0 and face == DOWN {face = UP};
sprite_index = sprite[face];


//collision code for the true gamers
if place_meeting ( x + xspd, y, obj_wall )
    { xspd = 0;
	}
if place_meeting( x, y + yspd, obj_wall )
    {
	yspd = 0;
	}

if place_meeting ( x + xspd, y, Obj_wall2 )
    { xspd = 0;
	}
if place_meeting( x, y + yspd, Obj_wall2 )
    {
	yspd = 0;
	}

if place_meeting ( x + xspd, y, obj_wall_side )
    { xspd = 0;
	}
if place_meeting( x, y + yspd, obj_wall_side )
    {
	yspd = 0;
	}

if place_meeting ( x + xspd, y, Obj_wall_side2 )
    { xspd = 0;
	}
if place_meeting( x, y + yspd, Obj_wall_side2 )
    {
	yspd = 0;
	}

x += xspd;
y += yspd;


//ANIMATE SONNN
if xspd == 0 and yspd == 0
    {
	image_index = 0;
    }	
	
//depth for your mum
depth = -bbox_bottom;
