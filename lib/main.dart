import 'package:flutter/cupertino.dart';
import 'package:device_preview/device_preview.dart';
import 'view/login_view.dart';


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
      home: LoginView(), // Agora chama LoginView em vez de MainApp
    );
  }
}
