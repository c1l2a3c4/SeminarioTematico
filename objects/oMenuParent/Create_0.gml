// Inicializando as variáveis
guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 10;

titleYExtra = 64;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;

menuXTarget = guiWidth / 2;
menuSpeed = 25; // menor valor é mais rápido
menuFont = fMenu;

menuItemheight = (font_get_size(menuFont) + 32) * oGame.yScale;
menuCommitted = -1;
menuControl = true;

// Opções do menu
menu[3] = "Novo Jogo";
menu[2] = "Configurações";
menu[1] = "Créditos";
menu[0] = "Sair do Jogo";

menuTop = menuY - ((menuItemheight * oGame.yScale) * array_length(menu));

menuCursor = 2;
menuCursorPrevious = -1;

itemSelected = false;

title = "EduEscape";

// Funções para cada opção do menu
menuFunction[3] = function() {
    // Lógica para "Novo Jogo"
    room_persistent = false; // Desativa a persistência da sala atual
    room_goto(Room1);        // Vai para Room1
};

menuFunction[2] = function() {
    // Lógica para "Configurações"
    SlideTransition(TRANS_MODE.GOTO, rOptions);
};

menuFunction[1] = function() {
    // Lógica para "Créditos" (caso deseje adicionar)
    // Exemplo: room_goto(rCredits);
};

menuFunction[0] = function() {
    // Lógica para "Sair do Jogo"
    game_end();
};

// Função para clicar no botão do menu
mouseClick = function() {
    menuXTarget = guiWidth + 200;
    menuCommitted = menuCursor;

    // Verifica qual opção foi selecionada
    if (menuCommitted == 3) { // Novo Jogo
        menuFunction[3]();
    } else if (menuCommitted == 2) { // Configurações
        menuFunction[2]();
    } else if (menuCommitted == 1) { // Créditos
        menuFunction[1]();
    } else if (menuCommitted == 0) { // Sair
        menuFunction[0]();
    }

    menuControl = false;
};

// Condição para executar a função do botão clicado (pode ser personalizada)
condition = function() { 
    return (menuX > guiWidth + 150); 
};