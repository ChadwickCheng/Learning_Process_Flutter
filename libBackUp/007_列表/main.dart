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
//     return Center(
//       child:ListView(
//         children:<Widget>[
//           ListTile(
//             leading:Icon(Icons.phone),
//             title:Text('iphone14pm',style:TextStyle(fontSize:20)),
//             subtitle: Text('最新款iphone'),
//           ),
//           ListTile(
//             leading:Icon(Icons.phone_android),
//             title:Text('小米11',style:TextStyle(fontSize:20)),
//             subtitle: Text('小米旗舰'),
//           ),
//           ListTile(
//             leading:Icon(Icons.phone_iphone),
//             title:Text('华为P40',style:TextStyle(fontSize:20)),
//             subtitle: Text('华为旗舰'),
//           ),
//         ]
//       )
//     );
//   }
// }

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:ListView(
        scrollDirection: Axis.horizontal,
        children:<Widget>[
          Container(
            child:Text(
              '手机品牌',
              style:TextStyle(fontSize:30)
            )
          ),
          Container(
            width:180,
            color:Colors.amber,
            child:ListView(
              children: <Widget>[
                ListTile(
                  leading:Icon(Icons.phone_android),
                  title:Text('小米11',style:TextStyle(fontSize:20)),
                  subtitle: Text('小米旗舰'),
                ),
                ListTile(
                  leading:Icon(Icons.phone_iphone),
                  title:Text('华为P40',style:TextStyle(fontSize:20)),
                  subtitle: Text('华为旗舰'),
                ),
              ],
            )
          ),
          Container(
            child:Text(
              '手机品牌',
              style:TextStyle(fontSize:30)
            )
          )
        ]
      )
    );
  }
}