/// @description Gerenciador de salas 
    if (global.sala_atual == 2) {
        room_goto(Room2);
    } else if (global.gambiarra == 1 and global.sala_atual == 2 ) {
        room_goto(Room3);
    } else {
        room_goto(Room1); // Apenas uma fallback para segurança
    }


