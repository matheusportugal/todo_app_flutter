import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  var list = ['teste 1', 'teste 2', 'teste 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent, title: Text('Todo App'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: list.length,
          itemBuilder: (context, index) {
              return ListTile(
                  title: Text(list[index]),
                  subtitle: Text(list[index]),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TodoItem(),)
                  ),
              );
          },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoItem(),)
        ),
      ),
    );
  }
}
