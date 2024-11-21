/// @description Evento Step para atualizar a posição do joystick

if (global.jogo_iniciado && mouse_check_button(mb_left)) {
    var joystick_center_x = obj_joystick_pai.x; // Posição do centro do joystick
    var joystick_center_y = obj_joystick_pai.y;

    var mouse_x_pos = device_mouse_x(0);  // Posição X do mouse
    var mouse_y_pos = device_mouse_y(0);  // Posição Y do mouse

    // Calcular a distância entre o centro do joystick e a posição do mouse
    var distance = point_distance(joystick_center_x, joystick_center_y, mouse_x_pos, mouse_y_pos);

    // Verifica se o mouse está dentro do raio do joystick
    if (distance < joystick_radius) {
        obj_joystick_filho.x = mouse_x_pos;
        obj_joystick_filho.y = mouse_y_pos;

        global.move_x = (mouse_x_pos - joystick_center_x) / joystick_radius;  // Normaliza
        global.move_y = (mouse_y_pos - joystick_center_y) / joystick_radius;  // Normaliza
    } else {
        // Se o mouse estiver fora do raio, limita o movimento ao raio do joystick
        var angle = point_direction(joystick_center_x, joystick_center_y, mouse_x_pos, mouse_y_pos);
        obj_joystick_filho.x = joystick_center_x + lengthdir_x(joystick_radius, angle);
        obj_joystick_filho.y = joystick_center_y + lengthdir_y(joystick_radius, angle);

        global.move_x = lengthdir_x(1, angle); // Normaliza o movimento
        global.move_y = lengthdir_y(1, angle); // Normaliza o movimento
    }

    // Impede que a bola do joystick ultrapasse as margens do círculo pai
    if (point_distance(joystick_center_x, joystick_center_y, obj_joystick_filho.x, obj_joystick_filho.y) > joystick_radius) {
        var angle = point_direction(joystick_center_x, joystick_center_y, obj_joystick_filho.x, obj_joystick_filho.y);
        obj_joystick_filho.x = joystick_center_x + lengthdir_x(joystick_radius, angle);
        obj_joystick_filho.y = joystick_center_y + lengthdir_y(joystick_radius, angle);
    }
}
