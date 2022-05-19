//inputs (wow this is the first time i havent added some weird comment thats so cool)
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//storre meniuin o[pttiokmdkks
op_length = array_length(option[menu_level]);

//dont you just wanna move through dat menu? well now you can! (for only $9999999999.99)
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


//USE THE OPTIONS, ANIKAN
if accept_key {

switch(menu_level) {
	
	
	//pause i think
	case 0:
        switch(pos){
      //start the game already!!!
      case 0: room_goto_next(); break;
      //settings
      case 1: break;
	  //exit game
      case 2: game_end(); break;
      }
    break;
	
	
	//set the tings
	case 1:
	
	
 
 
       }

}
