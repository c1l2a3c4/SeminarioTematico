/// Evento Step - Animação da Escala do Pop-up
if (show_popup) {
    if (scale < 1) {
        scale += scale_speed; // Ajuste a velocidade se necessário
    } else {
        scale = 1;
    }
}
