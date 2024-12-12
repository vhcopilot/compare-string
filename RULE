### Quy tắc chấm điểm đúng/sai cho câu và ký tự

#### 1. Mô tả tổng quan
Quy tắc chấm điểm đúng/sai được áp dụng để so sánh một chuỗi người dùng nhập ("answer") với chuỗi đúng ("correct"). Hệ thống sẽ xác định mức độ khớp từng ký tự và toàn bộ câu để đánh giá kết quả.

#### 2. Quy trình xử lý
1. **Chuẩn hóa chuỗi**:
   - Chuyển đổi toàn bộ chuỗi về chữ thường.
   - Loại bỏ các khoảng trắng thừa (bao gồm cả khoảng trắng đầu và cuối).
   - Thay thế các chuỗi khoảng trắng liên tiếp bằng một khoảng trắng duy nhất.

2. **So sánh câu trả lời**:
   - Duyệt từng ký tự của chuỗi chuẩn hóa "answer" và "correct" để kiểm tra mức độ khớp.
   - Đối với mỗi ký tự:
     - Nếu ký tự ở vị trí tương ứng khớp, đánh dấu là đúng ("1").
     - Nếu ký tự không khớp hoặc chuỗi "answer" kết thúc trước khi đạt tới vị trí của "correct", đánh dấu là sai ("0").

3. **Trả về kết quả**:
   - Chuỗi kết quả gồm các ký tự "1" (đúng) và "0" (sai), tương ứng với từng ký tự của chuỗi "correct".

#### 3. Quy tắc cụ thể
- **Chuẩn hóa chuỗi**:
  - Ví dụ:
    - Input: `"ABC  DEF"` → Output: `"abc def"`
    - Input: `" ABC   DEF."` → Output: `"abc def."`

- **So sánh từng ký tự**:
  - Nếu "answer" là `"abc def."` và "correct" là `"abc def."`, kết quả là `"111111111"`.
  - Nếu "answer" là `"abc def"` và "correct" là `"abc def."`, kết quả là `"111111110"`.
  - Nếu "answer" là `"abc"` và "correct" là `"abc def."`, kết quả là `"111000000"`.

#### 4. Quy tắc kiểm tra toàn bộ câu
- Toàn bộ câu được coi là **đúng** nếu chuỗi kết quả chỉ chứa ký tự "1".
- Ví dụ:
  - Chuỗi kết quả: `"111111111"` → Toàn bộ câu đúng.
  - Chuỗi kết quả: `"111111110"` → Toàn bộ câu sai.

#### 5. Ví dụ cụ thể
| **Input**               | **Chuẩn hóa**       | **Kết quả từng ký tự** | **Câu đúng/sai** |
|--------------------------|---------------------|------------------------|------------------|
| `"ABC DEF"`            | `"abc def"`       | `"111111110"`         | Sai              |
| `"Abc def."`           | `"abc def."`      | `"111111111"`         | Đúng             |
| `"abc"`                | `"abc"`           | `"111000000"`         | Sai              |
| `"ABC                 DEF."` | `"abc def."`      | `"111111111"`         | Đúng             |
| `"abc def."`           | `"abc def."`      | `"111111111"`         | Đúng             |

#### 6. Quy định bổ sung
- Chuỗi đúng ("correct") luôn phải được chuẩn hóa trước khi sử dụng để so sánh.
- Chuỗi nhập của người dùng ("answer") cũng phải được chuẩn hóa trước khi so sánh.
- Độ dài chuỗi "correct" là tham chiếu chính. Nếu "answer" ngắn hơn, các ký tự thiếu sẽ được coi là sai.

