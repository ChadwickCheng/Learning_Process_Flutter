import 'package:flutter/material.dart';

class AppBardemoPage extends StatefulWidget {
  AppBardemoPage({Key? key}) : super(key: key);
  _AppBardemoPageState createState() => _AppBardemoPageState();
}

class _AppBardemoPageState extends State<AppBardemoPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  void initState() {
    super.initState();
    _tabController =  TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  Text('顶部tab 切换'),
        bottom:  TabBar(
          tabs: <Widget>[
             Tab(
              icon:  Icon(Icons.directions_bike),
            ),
             Tab(
              icon:  Icon(Icons.directions_boat),
            ),
             Tab(
              icon:  Icon(Icons.directions_bus),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body:  TabBarView(
      controller: _tabController,
      children: <Widget>[
         Center(child:  Text('自行车')),
         Center(child:  Text('船')),
         Center(child:  Text('巴士')),
      ],
      ),
    );
  }
}