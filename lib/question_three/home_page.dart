import 'package:flutter/material.dart';
import 'package:ptc_homework/question_three/get_user.dart';
import '/question_three/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [
    {"id": 0},
    {"id": 1},
    {"id": 2},
    {"id": 3},
    {"id": 4},
    {"id": 5},
    {"id": 6},
    {"id": 7},
    {"id": 8},
    {"id": 9},
    {"id": 10}
  ];
  final Map<int, UserModel> _cache = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]['id'].toString()),
            onTap: () => showUserDetails(users[index]['id']),
          );
        },
      ),
    );
  }

  UserModel getUserByIdWithCache(int id) {
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    } else {
      _cache[id] = getUserById(id);
      return _cache[id]!;
    }
  }

  void showUserDetails(int userId) {
    UserModel user = getUserByIdWithCache(userId);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(user.getFullName()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: Image.network(user.image)),
              Text(user.about),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
