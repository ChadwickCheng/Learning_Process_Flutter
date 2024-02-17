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

// padding组件
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Padding(
//       padding:EdgeInsets.fromLTRB(0, 0, 10, 0),
//       child:Image.asset('images/avatar.png'),
//     );
//   }
// }

// row组件
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       height: 700,
//       width: 500,
//       color: Colors.black26,
//       child:Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 主轴对齐方式
//         children: <Widget>[
//           IconContainer(Icons.home,color:Colors.red),
//           IconContainer(Icons.search,color:Colors.blue),
//           IconContainer(Icons.send,color:Colors.orange),
//         ],
//       ),
//     );
//   }
// }
class IconContainer extends StatelessWidget{
  late double size;
  late IconData icon;
  late Color color;
  IconContainer(this.icon,{this.size=32.0,this.color=Colors.blue}){
    
  }

  @override
  Widget build(BuildContext context){
    return Container(
      width:this.size+60,
      height:this.size+60,
      color:this.color,
      child:Center(
        child:Icon(this.icon,size:this.size,color:Colors.white)
      )
    );
  }
}

// column组件
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Container(
//       height: 700,
//       width: 500,
//       color: Colors.black26,
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,// 主轴对齐方式
//         children: <Widget>[
//           IconContainer(Icons.home,color:Colors.red),
//           IconContainer(Icons.search,color:Colors.blue),
//           IconContainer(Icons.send,color:Colors.orange),
//         ],
//       ),
//     );
//   }
// }

// expanded 类似于flex
class MyHome extends StatelessWidget{
  MyHome({required Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding:EdgeInsets.all(10),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex:1,
            child:IconContainer(Icons.home,color:Colors.red),
          ),
          Expanded(
            flex:2,
            child:IconContainer(Icons.search,color:Colors.blue),
          ),
          Expanded(
            flex:1,
            child:IconContainer(Icons.send,color:Colors.orange),
          ),
        ],
      ),
    );
  }
}
