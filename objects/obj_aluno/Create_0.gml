/// @description Código de inicialização
global.vidas = 3; // Inicializa as vidas com 3 no início do jogo
global.pausado = false;
brinde = 0; // Inicializa a contagem de brindes
diploma_criado = false; // Controla se o diploma já foi criado
global.sala_atual = 1



/// @description Inicializar variáveis
move_speed = 3.9; // Velocidade de movimento do personagem
move_up = false;
move_down = false;
move_left = false;
move_right = false;
global.jogo_iniciado = true; // O jogo começa pausado
brinde = 0;


// Inicializar a lista de objetos sólidos
objetos_solidos = [obj_cadeira, objMesa_Computador, obj_parede_superior,obj_parede_direita,
obj_parede_esquerda, obj_borda_direita, obj_borda_esquerda,
obj_mesa_prof, obj_parede_superior_02,obj_parede_superior03,obj_parede_inf_direita,
obj_parede_inf_esquerda,obj_parede_divisoria,obj_mesa,
obj_mesa_livro,obj_mesa_notebook1,obj_mesa_notebook2,
obj_mesa_notebook3,obj_puff_01,obj_puff_02,obj_porta_vidro_estatica,obj_Porta_aberta_3];

// Função auxiliar para verificar colisão com qualquer objeto sólido na lista
function colisao_solida(dx, dy) {
    for (var i = 0; i < array_length(objetos_solidos); i++) {
        if (place_meeting(x + dx, y + dy, objetos_solidos[i])) {
            return true;
        }
    }
    return false;
}



