import 'package:fish_redux/fish_redux.dart';
import 'package:fishredux/count/page.dart';
import 'package:fishredux/first/page.dart';
import 'package:fishredux/second/page.dart';
import 'package:flutter/material.dart' hide Page;

import 'entrance/page.dart';
import 'list/page.dart';

Widget createApp() {
  ///定义路由
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      /// 入口模块演示
      'entrance_page': EntrancePage(),  //在这里添加页面
      ///计数器模块演示
      'count_page': CountPage(),  //在这里添加页面
      ///页面传值跳转模块演示
      "first_page": FirstPage(),
      "second_page": SecondPage(),
      ///列表模块演示
      "ListPage": ListPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('first_page', null),  //把他作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
