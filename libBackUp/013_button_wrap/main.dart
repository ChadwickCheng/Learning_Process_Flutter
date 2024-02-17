import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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

// 新版flutter的按钮需要使用ElevatedButton
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return MyButton('hello');
//   }
// }
class MyButton extends StatelessWidget{
  late String text;
  MyButton(this.text){}
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed:(){
        print('按钮被点击');
      },
      child:Text(this.text),
    );
  }
}

// wrap实现流布局
class MyHome extends StatelessWidget{
  MyHome({required Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Wrap(
      spacing:10,// 水平间距
      runSpacing: 10,// 垂直间距
      alignment: WrapAlignment.spaceEvenly,// 主轴对齐方式
      children:List.generate(10, (index){
        return MyButton('第$index个按钮');
      }),
    );
  }
}