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
      title: "Yash Rastogi",
      theme: ThemeData(
        // primarySwatch: Colors.white,
        // brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 53, 71, 57),
        // primaryColorDark: Colors.white,
        fontFamily: "Montserrat",
      ),
      home: ProfilePage(),
    );
  }
}
