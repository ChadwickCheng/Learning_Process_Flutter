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

// 有状态组件：可以改变状态的组件
class MyHome extends StatefulWidget{
  MyHome({required Key key}):super(key:key);
  _MyHomeState createState()=>_MyHomeState();
}
class _MyHomeState extends State<MyHome>{
  int count = 0;
  @override
  Widget build (BuildContext context){
    return Container(
      child:Column(
        children:<Widget>[
          Chip(// 用于显示信息的小组件
            label:Text('当前计数：${this.count}'),
          ),
          ElevatedButton(
            onPressed:()=>setState(()=>this.count++),
            child:Text('增加'),
          ),
        ]
      )
    );
  }
}