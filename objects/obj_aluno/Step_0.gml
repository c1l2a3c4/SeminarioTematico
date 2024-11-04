/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Movimentação do personagem
if (keyboard_check(vk_up)) {
    if (!place_meeting(x, y - 5, obj_bloqueio)) { // Verifica colisão com obj_bloqueio
        y -= 5;
    }
}

if (keyboard_check(vk_down)) {
    if (!place_meeting(x, y + 5, obj_bloqueio)) { // Verifica colisão com obj_bloqueio
        y += 5;
    }
}

if (keyboard_check(vk_left)) {
    if (!place_meeting(x - 5, y, obj_bloqueio)) { // Verifica colisão com obj_bloqueio
        x -= 5;
        image_xscale = -0.45;
    }
}

if (keyboard_check(vk_right)) {
    if (!place_meeting(x + 5, y, obj_bloqueio)) { // Verifica colisão com obj_bloqueio
        x += 5;
        image_xscale = 0.45;
    }
}

// Altera a sprite dependendo da movimentação
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
    room_goto_next(); // Passar de ambiente (fase)
}
