import 'package:flutter_web/material.dart';
import 'package:portfolio/profile_page.dart';

void main() async => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        fontFamily: "Merriweather"
      ),
      home: ProfilePage(),
    );
  }
}
