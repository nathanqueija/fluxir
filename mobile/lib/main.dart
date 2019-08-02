import 'package:flutter/material.dart';
import 'package:fluxir/architecture/overseer.dart';
import 'package:fluxir/architecture/provider.dart';
import 'package:fluxir/screens/users_screen.dart';

void main() => runApp(Fluxir());

class Fluxir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      data: Overseer(),
      child: MaterialApp(
          title: 'Fluxir',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: UsersScreen.routeName,
          routes: {UsersScreen.routeName: (_) => UsersScreen()}),
    );
  }
}
