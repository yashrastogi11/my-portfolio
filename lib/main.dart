import 'package:flutter_web/material.dart';
import 'package:portfolio/profile_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primaryColor: Colors.white,
        // primaryColorDark: Colors.white,
        fontFamily: "Merriweather"
      ),
      home: ProfilePage(),
    );
  }
}
