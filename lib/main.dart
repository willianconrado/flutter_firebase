import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/pages/splash.view.dart';
import 'package:flutter_app/themes/dark.theme.dart';
import 'package:flutter_app/themes/light.theme.dart';
import 'package:flutter_app/themes/purple.theme.dart';
import 'pages/home.page.dart';
import 'pages/tabs.page.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Firebase',
      debugShowCheckedModeBanner: false,
      theme: purpleTheme(),
      home: HomePage(),
      /*
      home: const DefaultTabController(
        length: 2,
        child: TabsPage(),
      ),*/
    );
  }
}
