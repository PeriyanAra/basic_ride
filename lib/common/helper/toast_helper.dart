import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper {
  static void showToast({required String text}) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
    );
  }
}
