import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/features/home/service/todo_service.dart';
import 'package:todo_app/product/network/network_manager.dart';

void main() {
  late ITodoService _todoService;
  setUp(() {
    _todoService = TodoService(ProductNetworkManager());
  });

  test("Test Todo Service", () async {
    var response = await _todoService.fetchTodoList();
    expect(response.length, 200);
  });
}
