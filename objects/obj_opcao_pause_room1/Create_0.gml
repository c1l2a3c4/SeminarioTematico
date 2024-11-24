/// Exemplo de um objeto que teve as opções customizadas ao clicar nos botões
event_inherited();

title = "Configuracoes";
menu[4] = "Voltar para o jogo";
menu[3] = "Tela Cheia: " + (oGame.options.fullScreen?"Ligado":"Desligado");
menu[2] = "Musicas: " + (oGame.options.music?"Ligado":"Desligado");
menu[1] = "Efeitos Sonoros: " + (oGame.options.sfx?"Ligado":"Desligado");
menu[0] = "Sair do Jogo";

menuActivated = false;

menuFunction[4] = function(){
	
	SlideTransition(TRANS_MODE.GOTO, Room1);
}

menuFunction[3] = function() { 
	show_debug_message("clicou")
	oGame.options.fullScreen = !oGame.options.fullScreen;
	SetFullScreen(oGame.options.fullScreen);
	menu[3] = "Tela Cheia: " + (oGame.options.fullScreen?"Ligado":"Desligado");
	SaveOptions();
	menuActivated = false;
}
menuFunction[2] = function() { 
	oGame.options.music = !oGame.options.music;
	menu[2] = "Musicas: " + (oGame.options.music?"Ligado":"Desligado");
    // Verifica e controla a reprodução da música
    if (oGame.options.music) {
        PlayMusic(snd_som_de_fundo, true); // Inicia a música com loop
    } else {
        audio_stop_sound(snd_som_de_fundo); // Para a música
    }
    
    SaveOptions();
    menuActivated = false;
}

menuFunction[1] = function() { 
	oGame.options.sfx = !oGame.options.sfx;
	menu[1] = "Efeitos Sonoros: " + (oGame.options.sfx?"Ligado":"Desligado");
    if (!oGame.options.sfx) {
        audio_stop_all(); // Para todos os efeitos sonoros ativos
    }
    
    SaveOptions();
    menuActivated = false;
}


menuFunction[0] = function() { room_goto(Room_confirmacao_sair); }

mouseClick = function() {
	menuCommitted = menuCursor;
	
			
	if(menuCommitted == 0){
		menuXTarget = guiWidth+200;
		menuControl = false;
	}else{
		//audio_play_sound(snd_som_de_fundo, 10, false);
		menuActivated = true
	}
}

condition = function(){ return menuActivated or (menuX > guiWidth+150); }

menuTop = menuY - ((menuItemheight * oGame.yScale) * array_length(menu));