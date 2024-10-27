// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetFullScreen(fullScreen) {
	
	//Dependendo da opção selecionada eu seto como full screen e reinicio as variáveis
	window_set_fullscreen(fullScreen);

	screenWidth = display_get_gui_width();
	screenHeight = display_get_gui_height();

	///set window size
	window_set_size(screenWidth, screenHeight);

	camera_set_view_size(view_camera[0], screenWidth, screenHeight);

	view_wport = screenWidth;
	view_hport = screenHeight;
	show_debug_message(string(screenWidth));
	
	surface_resize(application_surface, screenWidth, screenHeight);


}

function CreateOptions(){
	if(!file_exists(FILENAME)){
		oGame.options = 
		{
			fullScreen : false,
			sfx : true,
			music : true
		};
		SaveOptions();
	}else{
		oGame.options = json_parse(ReadOptions());
	}
}

function SaveOptions(){
	file_delete(FILENAME);
	var file = file_text_open_write(FILENAME);
	file_text_write_string(file, json_stringify(oGame.options));
	file_text_close(file);
}

function ReadOptions(){
	var ret = "";
	var file = file_text_open_read(FILENAME);
	ret = file_text_read_string(file);
	show_debug_message("arquivos = " + ret)
	file_text_close(file);
	return ret;
}

function SlideTransition(m, t=noone) {
	with (oTransition)
	{
		mode = m;
		if (t != noone) target = t;
	}
}

function Wave(from, to, duration, offset) {

	///@arg from
	///@arg to
	///@arg duration
	///@arg offset
 
	// Returns a value that will wave back and forth between [from-to] over [duration] seconds
	// Examples
	//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
	//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
	// Or here is a fun one! Make an object be all squishy!! ^u^
	//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
	//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
 
	a4 = (argument1 - argument0) * 0.5;
	return argument0 + a4 + sin((((current_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;
}

function IsGame(){
	return room != rInit and room != rMenu and room != rOptions and room != rSplash;
}

function PlaySfx(sfx){
	if(oGame.options.sfx){
		PlayAudio(sfx);
	}
}

function PlayMusic(music, loop=false){
	if(oGame.options.music){
		PlayAudio(music, loop);
	}
}

function PlayAudio(soundid, loop=false){
	audio_play_sound(soundid, 10, loop);
}