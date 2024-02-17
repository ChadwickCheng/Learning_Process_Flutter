import 'package:flutter/material.dart';

import '../Search.dart';

class HomePage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              //路由跳转
              Navigator.of(context).push(
                MaterialPageRoute(
                  // builder: (context)=>SearchPage()
                  builder:(BuildContext context){
                    return SearchPage(title:'我是跳转传值');
                  }
                )
              );

            },
        ),
        SizedBox(height: 20),        

      ],
    );
  }
}
