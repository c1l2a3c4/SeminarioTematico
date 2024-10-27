/// Exemplo de um objeto que teve as opções customizadas ao clicar nos botões
event_inherited();

title = "Configuracoes";

menu[3] = "Tela Cheia: " + (oGame.options.fullScreen?"on":"off");
menu[2] = "Musicas: " + (oGame.options.music?"on":"off");
menu[1] = "SFX: " + (oGame.options.sfx?"on":"off");
menu[0] = "Voltar";

menuActivated = false;

menuFunction[3] = function() { 
	show_debug_message("clicou")
	oGame.options.fullScreen = !oGame.options.fullScreen;
	SetFullScreen(oGame.options.fullScreen);
	menu[3] = "Tela Cheia: " + (oGame.options.fullScreen?"on":"off");
	SaveOptions();
	menuActivated = false;
}
menuFunction[2] = function() { 
	oGame.options.music = !oGame.options.music;
	menu[2] = "Music: " + (oGame.options.music?"on":"off");
	SaveOptions();
	menuActivated = false;
}
menuFunction[1] = function() { 
	oGame.options.sfx = !oGame.options.sfx;
	menu[1] = "SFX: " + (oGame.options.sfx?"on":"off");
	SaveOptions();
	menuActivated = false;
}

menuFunction[0] = function() { SlideTransition(TRANS_MODE.GOTO, rMenu); }

mouseClick = function() {
	menuCommitted = menuCursor;
			
	if(menuCommitted == 0){
		menuXTarget = guiWidth+200;
		menuControl = false;
	}else{
		//audio_play_sound(snd_button, 10, false);
		menuActivated = true
	}
}

condition = function(){ return menuActivated or (menuX > guiWidth+150); }

menuTop = menuY - ((menuItemheight * oGame.yScale) * array_length(menu));