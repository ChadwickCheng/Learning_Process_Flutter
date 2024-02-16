import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

class MyHome extends StatelessWidget{

  final list = [];
  MyHome({required Key key}):super(key:key){
    for(var i=0;i<20;i++){
      list.add('第$i个');
    }
  }

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context,idx){
        return ListTile(
          leading:Icon(Icons.access_alarm),
          title:Text('${list[idx]}')
        );
      },
    );
  }
}
