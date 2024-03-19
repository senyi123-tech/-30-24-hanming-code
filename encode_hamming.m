function encoded_frame = encode_hamming(input_frame)
    % bit 29
    if mod(sum(input_frame(12:24)),2) == 0
        parity_29 = 0;
    else
        parity_29 = 1;
    end
    
    % bit 28
    if mod(sum(input_frame([5:11, 19:24])), 2) == 0
        parity_28 = 0;
    else
        parity_28 = 1;
    end
    
    % bit 27
    if mod(sum(input_frame([2:4, 8:11, 15:18, 23:24])), 2) == 0
        parity_27 = 0;
    else
        parity_27 = 1;
    end
    
    % bit 26
    if mod(sum(input_frame([1, 3, 4, 6, 7, 10, 11, 13, 14, 17, 18, 21, 22])), 2) == 0
        parity_26 = 0;
    else
        parity_26 = 1;
    end
    
    % bit 25
    if mod(sum(input_frame([1, 2, 4, 5, 7, 9, 11, 12, 14, 16, 18, 20, 22,24])), 2) == 0
        parity_25 = 0;
    else
        parity_25 = 1;
    end
    
    % bit 24 
    if mod(sum([input_frame, parity_29, parity_28, parity_27, parity_26, parity_25]), 2) == 0
        parity_24 = 0;
    else
        parity_24 = 1;
    end

    encoded_frame = [input_frame, parity_24, parity_25, parity_26, parity_27, parity_28, parity_29];
end
