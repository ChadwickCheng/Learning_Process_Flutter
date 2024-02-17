import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}

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
        body:MyHome(key:UniqueKey()),
      ),
      theme:ThemeData(
        primaryColor:Color.fromARGB(255, 20, 141, 80)
      )
    );
  }
}

// 单纯的stack 会把所有的widget叠在一起 一般来说会用align或者position来实现定位
class MyHome extends StatelessWidget{
  MyHome({required Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Stack(
      children:<Widget>[
        Container(
          width:100,
          height:100,
          color:Colors.red,
        ),
        Container(
          width:100,
          height:100,
          color:Colors.blue,
        ),
        Container(
          width:100,
          height:100,
          color:Colors.green,
        ),
        Container(
          width:100,
          height:100,
          color:Colors.yellow,
        ),
      ]
    );
  }
}

// stack+align实现定位
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Stack(
//       children:<Widget>[
//         Align(
//           alignment:Alignment.topLeft,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.red,
//           ),
//         ),
//         Align(
//           alignment:Alignment.topRight,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.blue,
//           ),
//         ),
//         Align(
//           alignment:Alignment.bottomLeft,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.green,
//           ),
//         ),
//         Align(
//           alignment:Alignment.bottomRight,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.yellow,
//           ),
//         ),
//       ]
//     );
//   }
// }

// stack+position实现定位
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Stack(
//       children:<Widget>[
//         Positioned(
//           left:0,
//           top:0,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.pink,
//           ),
//         ),
//         Positioned(
//           right:0,
//           top:0,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.blue,
//           ),
//         ),
//         Positioned(
//           left:0,
//           bottom:0,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.green,
//           ),
//         ),
//         Positioned(
//           right:0,
//           bottom:0,
//           child:Container(
//             width:100,
//             height:100,
//             color:Colors.yellow,
//           ),
//         ),
//       ]
//     );
//   }
// }