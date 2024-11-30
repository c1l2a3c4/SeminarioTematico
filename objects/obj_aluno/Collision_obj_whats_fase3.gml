/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Define a posição fixa para onde o objeto será enviado
var fixed_x = 578; // Coordenada X
var fixed_y = 512; // Coordenada Y

// Atualiza a posição do objeto para a posição fixa
x = fixed_x;
y = fixed_y;

// Reduz uma vida e verifica reinício
global.vidas -= 1;

if (global.vidas <= 0) {
    // Criar o objeto "obj_game_over" no centro da tela
    var game_over_x = room_width / 2;
    var game_over_y = room_height / 2;
    instance_create_layer(game_over_x, game_over_y, "Instances_2", obj_game_over);

    // Toca o som de game over
    audio_play_sound(snd_gameover, 1, false);

    // Pausar o jogo
    global.pausado = true;

    // Configura o alarme para reiniciar o jogo após 2 segundos
	room_restart()

} else {
    // Toca o som de dano e destrói o objeto colidido
    audio_play_sound(snd_sdn_dano, 1, false);
}