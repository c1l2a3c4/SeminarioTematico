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
	image_xscale=-0.1885317;
	
}

if (keyboard_check(vk_right)) {
    x += 5;
	image_xscale=0.2085588;
}

if keyboard_check(vk_anykey)
{
	sprite_index=spr_aluno_mov
}
else {
	sprite_index=spr_aluno
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