% 1. Đọc trực tiếp file JPG
img_raw = imread('baitap1_nhieu.jpg');

% 2. Kiểm tra và chuyển về ảnh xám (nếu cần)
if size(img_raw, 3) == 3
    img_gray = rgb2gray(img_raw); % Chuyển từ màu sang xám
else
    img_gray = img_raw; % Đã là ảnh xám rồi
end

% 3. Resize ảnh nhỏ lại để mô phỏng cho nhanh (Tùy chọn)
% Ví dụ: Thu về 128x128 pixel
%img_gray = imresize(img_gray, [128, 128]);

% 4. Lấy kích thước ảnh để nhớ cấu hình cho Verilog
[height, width] = size(img_gray);
fprintf('Kích thước ảnh: %d x %d\n', width, height);

% 5. Xuất ra file Hex (Mỗi dòng 1 pixel)
fid = fopen('input_image.hex', 'w');
% Chuyển ma trận thành 1 dòng dọc (transpose rồi mới gộp)
data_to_write = img_gray'; 
fprintf(fid, '%02x\n', data_to_write(:)); 
fclose(fid);

disp('Đã tạo xong file input_image.hex!');