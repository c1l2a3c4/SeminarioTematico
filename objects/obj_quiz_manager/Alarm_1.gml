/// @description Gerenciador de salas 
    if (global.sala_atual == 2) {
        room_goto(Room2);
    } else if (global.sala_atual == 3) {
        room_goto(Room3);
    } else {
        room_goto(oom1); // Apenas uma fallback para segurança
    }


