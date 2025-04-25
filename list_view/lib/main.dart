import 'package:flutter/material.dart';

void main() => runApp(MyListViewApp());

class MyListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Demo',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 165, 248, 255),
        appBar: AppBar(
          title: Text('Fruit List', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 1, 29, 71),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.apple),
              title: Text('Apple'),
              trailing: Icon(Icons.assignment_late_rounded),
              subtitle: Text('A red Apple'),
            ),
            ListTile(
              leading: Icon(Icons.breakfast_dining_sharp),
              title: Text('Banana'),
              trailing: Icon(Icons.food_bank_rounded),
              subtitle: Text('A yellow Banana'),
            ),
            ListTile(
              leading: Icon(Icons.cake),
              trailing: Icon(Icons.assignment_outlined),
              subtitle: Text('cake with fruits'),
              title: Text('Fruit Cake'),
            ),
            ListTile(
              leading: Icon(Icons.pin_end_outlined),
              trailing: Icon(Icons.food_bank_sharp),
              subtitle: Text('pineapple with fruits'),
              title: Text('Pineapple'),
            ),
            ListTile(title: Text('Strawberry')),
            ListTile(title: Text('Blueberry')),
            ListTile(title: Text('Fig')),
            ListTile(title: Text('Date')),
            ListTile(title: Text('Cherry')),
            ListTile(title: Text('Honeydew')),
            ListTile(title: Text('Kiwi')),
            ListTile(title: Text('Lime')),
            ListTile(title: Text('Lemon')),
            ListTile(title: Text('Mango')),
            ListTile(title: Text('Nectarine')),
            ListTile(title: Text('Orange')),
            ListTile(title: Text('Papaya')),
          ],
        ),
      ),
    );
  }
}
