import 'package:flutter/material.dart';

void main() => runApp(MyGridViewApp());

class MyGridViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Demo',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 251, 252),
        appBar: AppBar(
          title: Text('Color Grid', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 1, 26, 24),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/697259/pexels-photo-697259.jpeg?cs=srgb&dl=pexels-hieu-697259.jpg&fm=jpg',
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 246, 194, 212),
              child: Center(
                child: Text(
                  'Pink',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://t3.ftcdn.net/jpg/05/76/62/84/360_F_576628459_KxQkWPpgIygyblkkmg3txlL2LEU8FIsd.jpg',
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 3, 24, 140),
              child: Center(
                child: Text(
                  'blue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/image1.jpg'),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 63, 15, 71),
              child: Center(
                child: Text(
                  'Purple',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.pexels.com/photos/46231/water-lilies-pink-water-lake-46231.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  'Orange',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2JFyVMUGB2hCmAhFXOdCydqzgsCHd2BAzEA&s',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
