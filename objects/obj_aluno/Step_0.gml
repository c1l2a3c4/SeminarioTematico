/// @description Código para movimentação com bloqueio de colisão em objetos sólidos

// Somente mover o personagem se o jogo estiver iniciado
if (global.jogo_iniciado) {
    // Detectar toque nas setas e atualizar variáveis de controle
    if (device_mouse_check_button(0, mb_left) && position_meeting(device_mouse_x(0), device_mouse_y(0), obj_move_cima)) {
        move_up = true;
    } else {
        move_up = false;
    }

    if (device_mouse_check_button(0, mb_left) && position_meeting(device_mouse_x(0), device_mouse_y(0), obj_move_baixo)) {
        move_down = true;
    } else {
        move_down = false;
    }

    if (device_mouse_check_button(0, mb_left) && position_meeting(device_mouse_x(0), device_mouse_y(0), obj_move_esquerda)) {
        move_left = true;
    } else {
        move_left = false;
    }

    if (device_mouse_check_button(0, mb_left) && position_meeting(device_mouse_x(0), device_mouse_y(0), obj_move_direita)) {
        move_right = true;
    } else {
        move_right = false;
    }

    // Movimentação do personagem com checagem de colisão
    if (move_up || keyboard_check(vk_up)) {
        if (!colisao_solida(0, -move_speed)) {
            y -= move_speed;
        }
    }

    if (move_down || keyboard_check(vk_down)) {
        if (!colisao_solida(0, move_speed)) {
            y += move_speed;
        }
    }

    if (move_left || keyboard_check(vk_left)) {
        if (!colisao_solida(-move_speed, 0)) {
            x -= move_speed;
            image_xscale = -0.1885317;
        }
    }

    if (move_right || keyboard_check(vk_right)) {
        if (!colisao_solida(move_speed, 0)) {
            x += move_speed;
            image_xscale = 0.2085588;
        }
    }

    // Troca de sprite ao pressionar qualquer tecla
    if keyboard_check(vk_anykey) {
        sprite_index = spr_aluno_mov;
    } else {
        sprite_index = spr_aluno;
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

    // Verifica se o brinde é igual a 3 para passar de ambiente (fase)
    if (brinde == 3) {
        room_goto_next(); // passar de ambiente (fase)
    }
}
