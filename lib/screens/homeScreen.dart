import 'package:abedi_to_do_list/helpers/drawer_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo List Home Screen"),
      ),
      drawer: DrawerNavigation(),
    );
  }
}
