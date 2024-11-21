// Модуль семисегментного декодера с четырьмя отдельными входами X3, X2, X1, X0
module seven_seg_decoder(
    input X3,            // Входной сигнал X3 (старший бит)
    input X2,            // Входной сигнал X2
    input X1,            // Входной сигнал X1
    input X0,            // Входной сигнал X0 (младший бит)
    output reg A,        // Сегмент A
    output reg B,        // Сегмент B
    output reg C,        // Сегмент C
    output reg D,        // Сегмент D
    output reg E,        // Сегмент E
    output reg F,        // Сегмент F
    output reg G         // Сегмент G
);

    // Описываем логику декодера с использованием оператора case
    always @( X3 or X2 or X1 or X0 ) begin
        case ({X3, X2, X1, X0}) // Конкатенируем входы в одно значение
            4'b0000: {A, B, C, D, E, F, G} = 7'b0000001; // Отображение '0'
            4'b0001: {A, B, C, D, E, F, G} = 7'b1001111; // Отображение '1'
            4'b0010: {A, B, C, D, E, F, G} = 7'b0010010; // Отображение '2'
            4'b0011: {A, B, C, D, E, F, G} = 7'b0000110; // Отображение '3'
            4'b0100: {A, B, C, D, E, F, G} = 7'b1001100; // Отображение '4'
            4'b0101: {A, B, C, D, E, F, G} = 7'b0100100; // Отображение '5'
            4'b0110: {A, B, C, D, E, F, G} = 7'b0100000; // Отображение '6'
            4'b0111: {A, B, C, D, E, F, G} = 7'b0001111; // Отображение '7'
            4'b1000: {A, B, C, D, E, F, G} = 7'b0000000; // Отображение '8'
            4'b1001: {A, B, C, D, E, F, G} = 7'b0000100; // Отображение '9'
            4'b1010: {A, B, C, D, E, F, G} = 7'b0001000; // Отображение 'A'
            4'b1011: {A, B, C, D, E, F, G} = 7'b1100000; // Отображение 'B'
            4'b1100: {A, B, C, D, E, F, G} = 7'b0110001; // Отображение 'C'
            4'b1101: {A, B, C, D, E, F, G} = 7'b1000010; // Отображение 'D'
            4'b1110: {A, B, C, D, E, F, G} = 7'b0110000; // Отображение 'E'
            4'b1111: {A, B, C, D, E, F, G} = 7'b0111000; // Отображение 'F'
            default: {A, B, C, D, E, F, G} = 7'b1111111; // Выключить все сегменты при ошибке
        endcase
    end

endmodule