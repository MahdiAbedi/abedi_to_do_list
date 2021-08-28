import 'package:abedi_to_do_list/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  var _categoryNameController = TextEditingController();
  var _categoryDescriptionController = TextEditingController();

  _showFormDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: [
              ElevatedButton(onPressed: () {
                print(_categoryNameController.text);
                print(_categoryDescriptionController.text);
              }, child: Text('Save')),
              ElevatedButton(
                onPressed: () {return Navigator.pop(context);},
                child: Text('Cancel'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
              ),
            ],
            title: Text("Add New Catory"),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller:_categoryNameController,
                    decoration: InputDecoration(
                        hintText: "write a category name",
                        labelText: "category"),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                        hintText: "write a description",
                        labelText: "description"),
                  ),

                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text('Categories Screen'),
      ),
      body: Center(
        child: Text("WelCome To Categories Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return _showFormDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
