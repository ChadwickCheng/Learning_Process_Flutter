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

// AspectRatio组件 用于设置子组件的宽高比
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return Center(
//       child:Container(
//         width:200,
//         child:AspectRatio(
//           aspectRatio: 2/1,
//           child:Container(
//             color:Colors.red
//           )
//         )
//       )
//     );
//   }
// }

// Card组件 用于创建一个卡片 通常用于包裹一些内容
// class MyHome extends StatelessWidget{
//   MyHome({required Key key}):super(key:key);
//   @override
//   Widget build(BuildContext context){
//     return ListView(
//       children: <Widget>[
//         Card(
//           margin:EdgeInsets.all(10),
//           child:Column(
//             children:<Widget>[
//               ListTile(
//                 title:Text('雨宫莲',style:TextStyle(fontSize:20)),
//                 subtitle:Text('SEES成员',style:TextStyle(fontSize:16)),
//               ),
//               Divider(),
//               ListTile(
//                 title:Text('技能'),
//                 subtitle:Text('风属性魔法'),
//               ),
//               ListTile(
//                 title:Text('弱点'),
//                 subtitle:Text('电属性魔法'),
//               ),
//             ],
//           ),
//         ),
//         Card(
//           margin:EdgeInsets.all(10),
//           child:Column(
//             children:<Widget>[
//               ListTile(
//                 title:Text('明智吾郎',style:TextStyle(fontSize:20)),
//                 subtitle:Text('SEES成员',style:TextStyle(fontSize:16)),
//               ),
//               Divider(),
//               ListTile(
//                 title:Text('技能'),
//                 subtitle:Text('火属性魔法'),
//               ),
//               ListTile(
//                 title:Text('弱点'),
//                 subtitle:Text('冰属性魔法'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// 使用card创建图文列表
class MyHome extends StatelessWidget{
  final listData = [
    {
      'title':'雨宫莲',
      'description':'SEES成员',
      'imageUrl':'images/avatar.png'
    },
  ];
  MyHome({required Key key}):super(key:key);
  @override
  Widget build(BuildContext context){
    return ListView(
      children: listData.map((value){
        return Card(
          margin:EdgeInsets.all(10),
          child:Column(
            children:<Widget>[
              AspectRatio(
                aspectRatio: 16/9,
                child:Image.asset(value['imageUrl']!,fit:BoxFit.cover),
              ),
              ListTile(
                title:Text(value['title']!,style:TextStyle(fontSize:20)),
                subtitle:Text(value['description']!,overflow:TextOverflow.ellipsis,maxLines:2),
                leading:CircleAvatar(
                  backgroundImage:AssetImage(value['imageUrl']!),
                )
              ),
            ],
          )
        );
      }).toList(),
    );
  }
}