/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
x+=hsp
y+=vsp

if x<0 {hsp=-hsp}
if x>room_width{hsp=-hsp}

if y<0 {vsp=-vsp}
if y>room_height{vsp=-vsp} 

if (global.estado_jogo != "jogando") {
    path_speed = 0; // Pausa o movimento do path
  
}

// Se o jogo estiver rodando, continuar o path normalmente



// Código de movimento do jogador
