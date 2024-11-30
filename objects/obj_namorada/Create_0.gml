
// Inicializar a lista de objetos sólidos
objetos_solidos = [obj_cadeira, objMesa_Computador, obj_parede_superior,obj_parede_direita,
obj_parede_esquerda, obj_borda_direita, obj_borda_esquerda,
obj_mesa_prof, obj_parede_superior_02,obj_parede_superior03,obj_parede_inf_direita,
obj_parede_inf_esquerda,obj_parede_divisoria,obj_mesa,
obj_mesa_livro,obj_mesa_notebook1,obj_mesa_notebook2,
obj_mesa_notebook3,obj_puff_01,obj_puff_02];

// Função auxiliar para verificar colisão com qualquer objeto sólido na lista
function colisao_solida(dx, dy) {
    for (var i = 0; i < array_length(objetos_solidos); i++) {
        if (place_meeting(x + dx, y + dy, objetos_solidos[i])) {
            return true;
        }
    }
    return false;
}