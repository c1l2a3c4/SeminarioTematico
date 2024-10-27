/// @desc Control Menu
//Item ease in
menuX += (menuXTarget - menuX) / menuSpeed;

//Keyboard controls
if (menuControl)
{
	
	var mouseYGui = device_mouse_y_to_gui(0);
	
	//show_debug_message(string(mouse_y_gui) + " top: " + string(menu_top));
	if (mouseYGui < menuY) && (mouseYGui > menuTop) 
	{
		menuCursor = (menuY - mouseYGui) div (menuItemheight);
		
		if(menuCursor <= array_length(menu)){
			if(menuCursorPrevious != menuCursor){
				menuCursorPrevious = menuCursor;
				//audio_play_sound(menu_selecion_placeholder, 10, false);
			}
		}
		
		if (mouse_check_button_pressed(mb_left))
		{
			mouseClick();
		}
		
	}
}

if (condition()) && (menuCommitted != -1)
{
	menuFunction[menuCommitted]();
}