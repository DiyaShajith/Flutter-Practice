import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TODO List",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: const BorderSide(color: Colors.blue),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 200,
                        color: Colors.black,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(''),
                              ElevatedButton(
                                child: const Text("Save"),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  "Add Task",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "#",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "Task Name",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Status",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Edit",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Remove",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.white,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "22",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "Buy Grocery",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(color: Colors.orange),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "ToDo",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: const BorderSide(color: Colors.blue),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.edit,
                  color: Colors.blue,
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: const BorderSide(color: Colors.grey),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}