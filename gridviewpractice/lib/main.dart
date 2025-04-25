import 'package:flutter/material.dart';
void main(){
  runApp(MyGridViewApp());
}
class MyGridViewApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Grid view demo',
      home: Scaffold(
        appBar: AppBar(
          title:Text('grid view',style:TextStyle(color:Colors.amber)),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2JFyVMUGB2hCmAhFXOdCydqzgsCHd2BAzEA&s',
                  ),
                  ),
              ),
            ),
            Container(
              color:Colors.blue,
              child:Center(child:Text('Pink', style: TextStyle(fontWeight:FontWeight.bold),),),
            ),
          ],
          ),
      ),
    );
  }
}