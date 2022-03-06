import 'package:get/get.dart';

import '../../../product/network/network_manager.dart';
import '../model/todo_model.dart';
import '../service/todo_service.dart';

class TodoController extends GetxController {
  TodoService _todoService = TodoService(ProductNetworkManager());
  var todoList = <TodoModel>[].obs;
  @override
  onInit() {
    super.onInit();
    fetchTodoList();
  }

  fetchTodoList() async {
    var response = await _todoService.fetchTodoList();
    todoList = RxList(response);
  }
}
