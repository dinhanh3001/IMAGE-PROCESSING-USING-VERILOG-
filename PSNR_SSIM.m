
hex_file = 'output_image.hex';
orig_file = 'baitap1_nhieu.jpg';

% Kích thước ảnh tái tạo (như bạn cung cấp)
recon_width = 428;
recon_height = 551;

% 1. Đọc và Tái tạo ảnh từ Hex
fid = fopen(hex_file, 'r');
if fid == -1, error('Không tìm thấy file hex'); end
hex_data = fscanf(fid, '%x');
fclose(fid);

% Kiểm tra xem file hex có đủ dữ liệu cho kích thước 428x551 không
expected_len = recon_width * recon_height;
if length(hex_data) < expected_len
    warning('File hex thiếu dữ liệu so với kích thước 428x551. Tự động bù 0.');
    hex_data = [hex_data; zeros(expected_len - length(hex_data), 1)];
elseif length(hex_data) > expected_len
    % Nếu thừa thì cắt bớt cho đúng
    hex_data = hex_data(1:expected_len);
end

% Reshape và Transpose (Lưu ý: Matlab reshape theo cột trước)
img_recon = reshape(hex_data, recon_width, recon_height)';
img_recon = uint8(img_recon);

% 2. Đọc và Xử lý ảnh gốc
img_orig = imread(orig_file);
if size(img_orig, 3) == 3
    img_orig = rgb2gray(img_orig); % Chuyển sang ảnh xám
end

% 3. CẮT ẢNH GỐC ĐỂ KHỚP VỊ TRÍ 
% Giả sử bộ lọc 3x3 làm mất 1 pixel viền xung quanh.
% Ảnh tái tạo bắt đầu từ pixel (2,2) của ảnh gốc.
offset_x = 2; % Bỏ qua cột đầu tiên (Index Matlab bắt đầu từ 1, nên lấy từ 2)
offset_y = 2; % Bỏ qua hàng đầu tiên

% Cắt ảnh gốc theo kích thước của ảnh tái tạo
% Lấy từ hàng 2 đến (2 + 551 - 1)
% Lấy từ cột 2 đến (2 + 428 - 1)
img_orig_crop = img_orig(offset_y : offset_y + recon_height - 1, ...
                         offset_x : offset_x + recon_width - 1);

% 4. Tính toán chỉ số PSNR và SSIM
% PSNR
psnr_val = psnr(img_recon, img_orig_crop);

% SSIM
ssim_val = ssim(img_recon, img_orig_crop);

% MSE (Mean Squared Error)
err = double(img_recon) - double(img_orig_crop);
mse_val = mean(err(:).^2);

% 5. Hiển thị kết quả
fprintf('======================================\n');
fprintf('Kích thước so sánh: %d x %d\n', recon_width, recon_height);
fprintf('MSE : %.2f\n', mse_val);
fprintf('PSNR: %.2f dB\n', psnr_val);
fprintf('SSIM: %.4f\n', ssim_val);
fprintf('======================================\n');

% Vẽ hình so sánh
figure('Name', 'So sanh Chat luong', 'NumberTitle', 'off');
subplot(1,3,1); imshow(img_orig_crop); title('Ảnh Gốc (Đã crop)');
subplot(1,3,2); imshow(img_recon); title('Ảnh Tái tạo (Verilog)');
subplot(1,3,3); imshow(abs(img_recon - img_orig_crop), []); title('Sai biệt (Error Map)');
colorbar;