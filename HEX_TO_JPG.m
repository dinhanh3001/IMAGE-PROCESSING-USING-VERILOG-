
filename = 'output_image.hex';
fixed_width = 428;   % Chiều rộng cố định theo thiết kế phần cứng

% 1. Đọc file Hex
fid = fopen(filename, 'r');
if fid == -1
    error('Không tìm thấy file hex!');
end
hex_data = fscanf(fid, '%x'); % Đọc dữ liệu Hex
fclose(fid);

% 2. Tính toán kích thước thực tế
num_pixels = length(hex_data);
calculated_height = floor(num_pixels / fixed_width); % Tự tính chiều cao

fprintf('Số pixel đọc được: %d\n', num_pixels);
fprintf('Kích thước ảnh tái tạo: %d x %d\n', fixed_width, calculated_height);

% 3. Cắt bỏ phần dư thừa (nếu số pixel không chia hết cho width)
% Ví dụ: Nếu dữ liệu bị lẻ vài pixel cuối dòng, ta bỏ qua để tránh lỗi reshape
valid_length = fixed_width * calculated_height;
hex_data = hex_data(1:valid_length);

% 4. Tái tạo ảnh
% reshape(data, width, height)' -> Xoay ngang lại cho đúng chiều
img_matrix = reshape(hex_data, fixed_width, calculated_height)';

% 5. Hiển thị và Lưu
img_final = uint8(img_matrix);

figure;
imshow(img_final);
title(['Ảnh kết quả (Thực tế: ' num2str(fixed_width) 'x' num2str(calculated_height) ')']);

imwrite(img_final, 'ảnh đã xử lý .jpg');