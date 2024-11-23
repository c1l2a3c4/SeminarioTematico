if (global.estado_jogo != "jogando") {
    path_speed = 0; // Pausa o movimento do path
    exit; // Interrompe qualquer outra lógica
}

// Se o jogo estiver rodando, continuar o path normalmente
path_speed = 2; // Velocidade normal do path (ou a velocidade que você usava antes)
