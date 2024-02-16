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

// gridview两种方式 
// class MyHome extends StatelessWidget{

//   MyHome({required Key key}):super(key:key){}

//   List<Widget> _getListData(){
//     List<Widget> list = [];
//     for(var i=0;i<20;i++){
//       list.add(Container(
//         child:Column(
//           children: <Widget>[
//             Image.asset('images/avatar.png'),
//             SizedBox(height:10),
//             Text('这是第$i个标题',style:TextStyle(fontSize:20))
//           ],
//         ),
//         decoration:BoxDecoration(
//           border:Border.all(
//             color:Colors.pink,
//             width:1
//           )
//         ),
//       ));
//     }
//     return list;
//   }

//   @override
//   Widget build(BuildContext context){
//     return GridView.count(
//       padding:EdgeInsets.all(10),
//       crossAxisCount: 2,// 一行两列
//       crossAxisSpacing: 20,// 水平间距
//       mainAxisSpacing: 20,// 垂直间距
//       // childAspectRatio: 0.7,// 宽高比
//       children:this._getListData(),
//     );
//   }
// }
class MyHome extends StatelessWidget{

  MyHome({required Key key}):super(key:key){}

  List<Widget> _getListData(){
    List<Widget> list = [];
    for(var i=0;i<20;i++){
      list.add(Container(
        child:Column(
          children: <Widget>[
            Image.asset('images/avatar.png'),
            SizedBox(height:10),
            Text('这是第$i个标题',style:TextStyle(fontSize:20))
          ],
        ),
        decoration:BoxDecoration(
          border:Border.all(
            color:Colors.pink,
            width:1
          )
        ),
      ));
    }
    return list;
  }

  Widget _getListDataWidget(BuildContext context,int idx){
    return Container(
      child:Column(
        children: <Widget>[
          Image.asset('images/avatar.png'),
          SizedBox(height:10),
          Text('这是第$idx个标题',style:TextStyle(fontSize:20))
        ],
      ),
      decoration:BoxDecoration(
        border:Border.all(
          color:Colors.pink,
          width:1
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      itemCount: this._getListData().length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,// 一行两列
        crossAxisSpacing: 20,// 水平间距
        mainAxisSpacing: 20// 垂直间距
      ),
      itemBuilder:this._getListDataWidget,// 就是把这个函数分离了出来
    );
  }
}