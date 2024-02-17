import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title:Text("AppBarDemoPage"), 
  //       // backgroundColor: Colors.red, 
  //       centerTitle:true,
  //       leading: IconButton(
  //         icon: Icon(Icons.menu),
  //         onPressed: (){
  //           print('menu');
  //         },
  //       ), 
  //       actions: <Widget>[
  //         IconButton(
  //           icon: Icon(Icons.search),
  //           onPressed: (){
  //             print('search');
  //           },
  //         ),
  //         IconButton(
  //           icon: Icon(Icons.settings),
  //           onPressed: (){
  //             print('settings');
  //           },
  //         )
  //       ],
  //     ),
  //     body: Text('1111'),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  // return MaterialApp(
  //   home: DefaultTabController(
  //   length: 2,
  //   child: Scaffold(
  //     appBar: AppBar(
  //     title: Text('FlutterDemo'),
  //     bottom: TabBar(
  //     tabs: <Widget>[
  //       Tab(text: "热门"),
  //       Tab(text: "推荐")
  //       ]
  //     )),
  //     body: TabBarView(
  //       children: <Widget>[
  //           ListView(
  //             children: <Widget>[
  //               ListTile(title: Text("这是第一个tab")),
  //               ListTile(title: Text("这是第一个tab")),
  //               ListTile(title: Text("这是第一个tab"))
  //             ],
  //           ),
  //           ListView(
  //             children: <Widget>[
  //               ListTile(title: Text("这是第二个tab")),
  //               ListTile(title: Text("这是第二个tab")),
  //               ListTile(title: Text("这是第二个tab"))
  //               ],
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        // backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: "Search",
          onPressed: () {
            Navigator.of(context).pop();
          }),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: TabBar(
                  tabs: <Widget>[Tab(text: "热门"), Tab(text: "推荐")]
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
        children: <Widget>[
        ListView(
          children: <Widget>[
            ListTile(title: Text("这是第一个tab")),
            ListTile(title: Text("这是第一个tab")),
            ListTile(title: Text("这是第一个tab"))
          ],
        ),
        ListView(
          children: <Widget>[
            ListTile(title: Text("这是第二个tab")),
            ListTile(title: Text("这是第二个tab")),
            ListTile(title: Text("这是第二个tab"))
          ],
        )
      ],
    ),
    ),
    ),
    );
  }
}