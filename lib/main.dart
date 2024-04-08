import 'package:flutter/cupertino.dart';
import 'package:device_preview/device_preview.dart';
import 'package:projetomobile2/view/register_view.dart';
import 'view/login_view.dart';
import 'view/register_view.dart';
import 'view/passwordrecover_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      builder: DevicePreview.appBuilder,
      home: PasswordRecoverView(),
    );
  }
}
