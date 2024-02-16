import 'package:flutter/material.dart';

// void main() {
//   runApp(Center(
//     child:Text(
//       'Hello, World!',
//       textDirection: TextDirection.ltr,
//       style: TextStyle(fontSize: 32, color: Colors.blue)
//     )
//   ));
// }

void main(){
  runApp(MyApp());
}

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Center(
//       child:Text(
//         'Hello, World!',
//         textDirection: TextDirection.ltr,
//         style: TextStyle(fontSize: 32, color: Colors.blue)
//       )
//     );
//   }
// }

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'女神异闻录5皇家版',
      home:Scaffold(
        appBar:AppBar(
          title:Text('SEES'),
          elevation:30,
        ),
        body:MyHome(),
      ),
      theme:ThemeData(
        primaryColor:Color.fromARGB(255, 20, 141, 80)
      )
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:Text(
        'Hello, World!',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 32, color: Colors.blue)
      )
    );
  }
}