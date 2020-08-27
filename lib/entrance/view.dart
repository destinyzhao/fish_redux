import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(EntranceState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text('入口页面'),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
            padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
            color: Colors.green,
            child: Text(
              "进入",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //todo 点击事件
            }),
      ),
    ),
  );
}
