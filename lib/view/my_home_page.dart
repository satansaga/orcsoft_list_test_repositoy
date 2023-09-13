import 'package:flutter/material.dart';
import 'package:orcsoft_list_test/view/user_list_view.dart';
import 'package:orcsoft_list_test/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              UsersListView(
                users: userViewModel.users.userList,
              ),
              MaterialButton(
                minWidth: 150,
                height: 60,
                onPressed: ()=>{
                  userViewModel.getUsers('10')
                },
                color: Colors.cyan,
                child: const Text('load Users'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
