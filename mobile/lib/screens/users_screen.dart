import 'package:flutter/material.dart';
import 'package:fluxir/architecture/provider.dart';
import 'package:fluxir/managers/users_manager.dart';
import 'package:fluxir/models/accounts/user_model.dart';
import 'package:fluxir/utils/observer.dart';

class UsersScreen extends StatelessWidget {
  static String routeName = 'Users';
  @override
  Widget build(BuildContext context) {
    UsersManager manager = Provider.of(context).fetch(UsersManager);
    manager.listUsers();
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: Observer(
          stream: manager.users$,
          onSuccess: (BuildContext context, List<UserModel> users) {
            return ListView.builder(
              itemBuilder: (BuildContext context, index) {
                UserModel user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(user.id),
                  ),
                  title: Text(user.name),
                  subtitle: Text(user.username),
                );
              },
              itemCount: users.length,
            );
          },
        ));
  }
}
