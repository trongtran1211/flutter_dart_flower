import 'package:flutter/material.dart';
import 'package:health_care/screens/setting_screen/components/Help_Center_Screen.dart';
import 'package:health_care/screens/setting_screen/setting_screen.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  static String routeName = "/help_center";

  @override
  _HelpCenterScreenState createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, String>> _faqs = [
    {
      'question': 'Xóa lịch sử mua hàng như thế nào?',
      'answer': 'Bạn không thể xóa lịch sử mua hàng.'
    },
    {
      'question':
          'Tôi có thể thay đổi số lượng/phân loại sản phẩm sau khi đã đặt hàng không?',
      'answer':
          'Không. Bạn không thể thay đổi số lượng/phân loại sản phẩm sau khi đã đặt hàng thành công. '
              'Vui lòng kiểm tra kỹ số lượng/phân loại sản phẩm quyết định đặt trước khi bấm thanh toán'
    },
    {
      'question': 'Cách thay đổi thông tin Tài khoản ngân hàng liên kết?',
      'answer': 'Tài khoản ngân hàng liên kết với Số dư TK cũng chính là Tài khoản ngân hàng bạn đã thực hiện liên kết với tài khoản. '
          'Bạn có thể thực hiện thay đổi thông tin Tài khoản ngân hàng tại mục Số dư TK trên ứng dụng. '
          'Trong trường hợp gặp vấn đề liên quan đến yêu cầu thanh toán tiền ghi nhận từ Số dư TK, bạn có thể liên hệ Nhân viên CSKH để được hỗ trợ.'
    },
    {
      'question': "Cần làm gì nếu gặp lỗi khi sử dụng Ứng dụng?",
      'answer':
          'Nếu bạn gặp phải các trục trặc kỹ thuật (ví dụ: hiển thị trang trắng/không thể hiển thị trang, không thể xử lý giao dịch, không thể thêm sản phẩm vào Giỏ hàng, ...) khi sử dụng Ứng dụng, vui lòng khởi động lại hệ thống hoặc cập nhật phiên bản mới nhất.'
    },
    // Add more questions and answers here as needed
  ];

  late List<Map<String, String>> _filteredFaqs;

  @override
  void initState() {
    super.initState();
    _filteredFaqs = _faqs;
  }

  void _filterFaqs(String query) {
    final filtered = _faqs.where((faq) {
      final question = faq['question']!.toLowerCase();
      final answer = faq['answer']!.toLowerCase();
      final searchLower = query.toLowerCase();
      return question.contains(searchLower) || answer.contains(searchLower);
    }).toList();

    setState(() {
      _filteredFaqs = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed(SettingScreen.routeName);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Các câu hỏi thường gặp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: _searchController,
                onChanged: _filterFaqs,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  hintText: 'How can we help you?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredFaqs.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ExpansionTile(
                      title: Text(_filteredFaqs[index]['question']!),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(_filteredFaqs[index]['answer']!),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SettingScreen.routeName);
              },
              child: const Text('Back to the setting'),
            ),
          ],
        ),
      ),
    );
  }
}
