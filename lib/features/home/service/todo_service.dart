import 'package:vexana/vexana.dart';

import '../model/todo_model.dart';

enum TodoServicePath { todos }

abstract class ITodoService {
  ITodoService(INetworkManager networkManager);
  Future<List<TodoModel>> fetchTodoList();
}

class TodoService extends ITodoService {
  @override
  late INetworkManager _networkManager;
  TodoService(this._networkManager) : super(_networkManager);

  @override
  Future<List<TodoModel>> fetchTodoList() async {
    var response = await _networkManager.send(TodoServicePath.todos.name, parseModel: TodoModel(), method: RequestType.GET);
    return response.data;
  }
}
