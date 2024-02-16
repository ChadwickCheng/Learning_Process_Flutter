import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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

// class MyHome extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Image.asset(
//       'images/avatar.png',
//       alignment: Alignment.center,
//       color: Colors.red,
//       colorBlendMode: BlendMode.darken,
//       fit:BoxFit.contain,
//       repeat:ImageRepeat.noRepeat,
//     );
//   }
// }

/*
显示圆形图片有两个方法：
1.使用ClipOval
2.画一个圆形的Container,设置decoration
  1.设置borderRadius为圆形
  2.设置image为DecorationImage
  3.设置fit为cover
*/

// class MyHome extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       width:300,
//       height:300,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(150),
//         image:DecorationImage(
//           image:AssetImage('images/avatar.png'),
//           fit:BoxFit.cover
//         ),
//       ),
//     );
//   }
// }

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ClipOval(
      child:Image.asset(
        'images/avatar.png',
        width:300,
        height:300,
        fit:BoxFit.cover
      )
    );
  }
}