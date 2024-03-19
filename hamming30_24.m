long_data = randi([0, 1], 1, 24); % 随机生成一串长度为24的数字

% 编码
 encoded_data = encode_hamming(long_data);

% 模拟传输过程错误
corrupted_code = simulate_transmission_errors(encoded_data, 1);

%解码
decoded_data = decode_hamming(encoded_data);

% 计算不一致的位数
num_errors = sum(long_data ~= decoded_data);

% 显示结果
disp('原始长串数字：');
disp(long_data);
disp('编码结果：');
disp(encoded_data);
disp('传输结果：');
disp(corrupted_code);
disp('解码结果：');
disp(decoded_data);
disp(['原始数据与接收数据不一致的位数：', num2str(num_errors)]);