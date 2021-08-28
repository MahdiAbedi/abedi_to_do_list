import 'package:abedi_to_do_list/screens/categories_screen.dart';
import 'package:abedi_to_do_list/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("MahdiAbedi@ilyaweb.com"),
              accountName: Text("Mahdi Abedi"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.amazing.ir/wp-content/uploads/2016/10/Profile-amazing-ir-30.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text("Categories"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
