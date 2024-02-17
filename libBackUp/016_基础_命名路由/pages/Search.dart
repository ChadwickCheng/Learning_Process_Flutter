import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String title;
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  SearchPage({Key? key,required this.title}) : super(key: key){
    print(this.title);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("搜索页面"),
      ) ,
      body: Text("搜索页面内容区域"),
    );
  }
}
