import 'package:flutter/material.dart';

import '../Form.dart';

class CategoryPage extends StatefulWidget {
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key}  表示Key为可空类型
  CategoryPage({Key? key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: Text("跳转到表单页面"),
          onPressed: (){

            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>FormPage(title:'我是跳转传值')
                )
            );
          },
        )
      ],
    );
  }
}