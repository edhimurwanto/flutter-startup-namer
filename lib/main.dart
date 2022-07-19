import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/user_model.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserScreen(),
    );
  }
}

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late Future<List<User>> users;

  @override
  void initState() {
    super.initState();
    users = fetchUser();
  }

  Future<List<User>> fetchUser() async {
    var resp =
        await http.get(Uri.parse('https://gorest.co.in/public/v2/users'));
    if (resp.statusCode == 200) {
      var jsonData = jsonDecode(resp.body);
      List<User> users = [];
      for (var user in jsonData) {
        User u = User.fromJson(user);
        users.add(u);
      }
      return users;
    } else {
      throw Exception('Failed to load city');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('CRUD User'),
          trailing: Icon(
            Icons.add_rounded,
            size: 24,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: CupertinoSearchTextField(
                  placeholder: 'Search User',
                ),
              ),
              Expanded(
                child: FutureBuilder<List<User>>(
                    future: users,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) => Card(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Name ${snapshot.data![index].name}'),
                                    Text(
                                        'Email ${snapshot.data![index].email}'),
                                    Text(
                                        'Gender ${snapshot.data![index].gender}'),
                                    Text(
                                        'Status ${snapshot.data![index].status}'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      return const Text(
                        'Loading...',
                        style: TextStyle(fontSize: 14, color: Colors.blue),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
