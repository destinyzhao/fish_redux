import 'package:fish_redux/fish_redux.dart';

class FirstState implements Cloneable<FirstState> {
  ///传递给下个页面的值
  static const String fixedMsg = "我是FirstPage页面传递过来的数据：FirstPageValue";
  ///展示传递过来的值
  String msg;

  @override
  FirstState clone() {
    return FirstState()..msg = msg;
  }
}

FirstState initState(Map<String, dynamic> args) {
  return FirstState()..msg = "暂无";
}
