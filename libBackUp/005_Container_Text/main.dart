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
    return Container(
      child:Text(
        'xbox的p3r是真的好玩',
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.solid,
          wordSpacing: 1.0,
          letterSpacing: 1.0,
          fontStyle: FontStyle.italic,
          fontSize: 32,
          color: Colors.blue,
          fontWeight: FontWeight.bold
        )
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 57, 55, 54),
          width: 2.0
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(10.0),
      transform: Matrix4.rotationZ(0.1),
      height:100,
      width:200,
    );
  }
}