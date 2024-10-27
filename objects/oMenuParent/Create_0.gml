// Inicializando as variáveis
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 10;

titleYExtra = 64;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;

menuXTarget = guiWidth / 2;
menuSpeed = 25; // lower is faster
menuFont = fMenu;

menuItemheight = (font_get_size(menuFont) + 32) * oGame.yScale;
menuCommitted = -1;
menuControl = true;

menu[3] = "Novo Jogo";
menu[2] = "Configuracoes";
menu[1] = "Creditos";
menu[0] = "Sair do Game";

menuTop = menuY - ((menuItemheight * oGame.yScale) * array_length(menu));

menuCursor = 2;
menuCursorPrevious = -1;

itemSelected = false;

title = "EduEscape";

// Funções para cada opção do menu
menuFunction[3] = function() { room_goto(Room1); } // Atualizado para ir à Room1
menuFunction[2] = function() { SlideTransition(TRANS_MODE.GOTO, rOptions); }
menuFunction[1] = function() { /* Função para créditos, caso deseje adicionar */ }
menuFunction[0] = function() { game_end(); }

// Condição para executar a função do botão clicado
condition = function() { return (menuX > guiWidth + 150); }

// Função para clicar no botão do menu
mouseClick = function() {
	menuXTarget = guiWidth + 200;
	menuCommitted = menuCursor;
	if (menuCommitted == 3) { // Novo Jogo
		menuFunction[3]();
	} else if (menuCommitted == 2) { // Configurações
		menuFunction[2]();
	} else if (menuCommitted == 1) { // Créditos (caso queira adicionar uma função aqui)
		// Exemplo: room_goto(rCredits);
	} else if (menuCommitted == 0) { // Sair
		menuFunction[0]();
	}
	menuControl = false;
};
