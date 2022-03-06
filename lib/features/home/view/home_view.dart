import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../product/base/base_view.dart';
import '../controller/todo_controller.dart';
import '../model/todo_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  var todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return BaseView<TodoController>(
      viewModel: TodoController(),
      onModelReady: (model) {
        todoController.fetchTodoList();
      },
      onPageBuilder: (BuildContext context, TodoController value) => Scaffold(
        appBar: buildAppbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 400,
                height: 600,
                child: GetX<TodoController>(
                    builder: ((controller) => ListView.builder(
                          itemCount: todoController.todoList.length,
                          itemBuilder: (BuildContext context, int index) {
                            TodoModel todo = todoController.todoList[index];
                            return Text(todo.title!);
                          },
                        ))),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      title: const Text("Todo App"),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.invert_colors)),
      ],
    );
  }
}
