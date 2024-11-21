/// @description Evento Step para mover o objeto aluno baseado no joystick e nas teclas do teclado

// Certifique-se de que as variáveis globais foram inicializadas
if (global.move_x == undefined) {
    global.move_x = 0;  // Define um valor padrão
}

if (global.move_y == undefined) {
    global.move_y = 0;  // Define um valor padrão
}

// Verifica se o joystick foi movido e aplica a movimentação
if (global.jogo_iniciado) {
    var move_x = 0;
    var move_y = 0;

    if (mouse_check_button(mb_left)) {
        // Se o joystick está sendo pressionado, use o movimento do joystick
        move_x = global.move_x * move_speed;
        move_y = global.move_y * move_speed;
    } else {
        // Caso contrário, use o teclado para movimento
        if (keyboard_check(vk_left)) move_x = -move_speed;
        if (keyboard_check(vk_right)) move_x = move_speed;
        if (keyboard_check(vk_up)) move_y = -move_speed;
        if (keyboard_check(vk_down)) move_y = move_speed;
    }

    // Movimento na direção X
    if (!colisao_solida(move_x, 0)) {
        x += move_x;  
    }

    // Movimento na direção Y
    if (!colisao_solida(0, move_y)) {
        y += move_y;  
    }

    // Troca de sprite ao pressionar qualquer tecla ou ao usar o joystick
    if (move_x != 0 || move_y != 0) {
        sprite_index = spr_aluno_mov; // Use o sprite de movimento
    } else {
        sprite_index = spr_aluno; // Use o sprite parado
    }

    // Define a direção do sprite mantendo o tamanho constante
    if (move_x < 0) {
        // Vira o sprite para a esquerda
        if (image_xscale > 0) {
            image_xscale = -1;
        }
    } else if (move_x > 0) {
        // Vira o sprite para a direita
        if (image_xscale < 0) {
            image_xscale = 1;
        }
    }
}

// Impede que o personagem ultrapasse as margens da tela
var _margem_esquerda = 0;
var _margem_direita = room_width;
var _margem_superior = 0;
var _margem_inferior = room_height;

if (x < _margem_esquerda) x = _margem_esquerda;
if (x > _margem_direita) x = _margem_direita;
if (y < _margem_superior) y = _margem_superior;
if (y > _margem_inferior) y = _margem_inferior;
