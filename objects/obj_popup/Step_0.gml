/// @description Atualizar animação do pop-up
if (show_popup) {
    // Aumentar gradualmente a escala
    if (scale < 1) {
        scale += scale_speed;
    } else {
        scale = 1; // Garantir que não passe de 1
    }
}
