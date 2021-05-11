import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({Key key}) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  final _tituloController = TextEditingController();
  final _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent, title: Text('Todo Item'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _tituloController,
              decoration: InputDecoration(
                hintText: 'Título',
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _descricaoController,
              decoration: InputDecoration(
                  hintText: 'Descrição',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          RaisedButton(
            child: Text('Salvar'),
            color: Colors.greenAccent,
            textColor: Colors.white,
            onPressed: () {
              debugPrint(_tituloController.text);
              debugPrint(_descricaoController.text);
            },
          )
        ],
      ),
    );
  }
}
