/// @description Código de inicialização


/// @description Inicializar variáveis
move_speed = 5; // Velocidade de movimento do personagem
move_up = false;
move_down = false;
move_left = false;
move_right = false;
global.jogo_iniciado = false; // O jogo começa pausado
brinde = 0;


// Inicializar a lista de objetos sólidos
objetos_solidos = [objMesa_Computador, obj_parede_superior];

// Função auxiliar para verificar colisão com qualquer objeto sólido na lista
function colisao_solida(dx, dy) {
    for (var i = 0; i < array_length(objetos_solidos); i++) {
        if (place_meeting(x + dx, y + dy, objetos_solidos[i])) {
            return true;
        }
    }
    return false;
}

// Tocar som de fundo se não estiver tocando
if (!audio_is_playing(snd_som_de_fundo)) {
    audio_play_sound(snd_som_de_fundo, 1, true); 
}
