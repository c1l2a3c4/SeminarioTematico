/// @description Código de inicialização
global.vidas = 3; // Inicializa as vidas com 3 no início do jogo
global.pausado = false;


/// @description Inicializar variáveis
move_speed = 3.9; // Velocidade de movimento do personagem
move_up = false;
move_down = false;
move_left = false;
move_right = false;
global.jogo_iniciado = false; // O jogo começa pausado
brinde = 0;


// Inicializar a lista de objetos sólidos
objetos_solidos = [objMesa_Computador, obj_parede_superior,obj_parede_direita,obj_parede_esquerda, obj_borda_direita, obj_borda_esquerda];

// Função auxiliar para verificar colisão com qualquer objeto sólido na lista
function colisao_solida(dx, dy) {
    for (var i = 0; i < array_length(objetos_solidos); i++) {
        if (place_meeting(x + dx, y + dy, objetos_solidos[i])) {
            return true;
        }
    }
    return false;
}


    // Verifica se o brinde é igual a 3 para passar de ambiente (fase)
	if (brinde == 3 && !instance_exists(obj_diploma_quiz)) {
    var pos_x = room_width / 2;
    var pos_y = room_height / 2;
    var diploma = instance_create_layer(pos_x, pos_y, "Instances", obj_diploma_quiz);
    diploma.image_xscale = 0.3; // Reduz a largura pela metade
    diploma.image_yscale = 0.3; // Reduz a altura pela metade
}

