/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Movimentação do personagem
if (keyboard_check(vk_up)) {
    y -= 5;
}

if (keyboard_check(vk_down)) {
    y += 5;
}

if (keyboard_check(vk_left)) {
    x -= 5;
}

if (keyboard_check(vk_right)) {
    x += 5;
}

// Impede que o personagem ultrapasse as margens da tela
var margem_esquerda = 0;
var margem_direita = room_width;
var margem_superior = 0;
var margem_inferior = room_height;

if (x < margem_esquerda) x = margem_esquerda;
if (x > margem_direita) x = margem_direita;
if (y < margem_superior) y = margem_superior;
if (y > margem_inferior) y = margem_inferior;

// Verifica se o brinde é igual a 3 para passar de ambiente (fase)
if (brinde == 3) {
    room_goto_next(); // passar de ambiente (fase)
}
