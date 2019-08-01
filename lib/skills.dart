import 'package:flutter_web/material.dart';
import 'package:portfolio/responsive_widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    skillData(context) => ResponsiveWidget.isLargeScreen(context)
        ? Column(
            children: <Widget>[
              Text(
                "SKILLS",
                textScaleFactor: 4,
                style: TextStyle(
                  color: Color.fromARGB(255, 53, 71, 57),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Machine\nLearning",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Flutter",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Competetive\nCoding",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        : Column(
            children: <Widget>[
              Text(
                "SKILLS",
                textScaleFactor: 4,
                style: TextStyle(
                  color: Color.fromARGB(255, 53, 71, 57),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Machine\nLearning",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Flutter",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                  Container(
                    height: 450,
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 310,
                            width: 250,
                            padding: EdgeInsets.all(10),
                            child: Image.asset("web.jpg"),
                          ),
                          Text(
                            "Competetive\nCoding",
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.4,
                            style: TextStyle(
                                color: Color.fromARGB(255, 53, 71, 57),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );

    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          skillData(context),
        ],
      ),
      smallScreen: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          skillData(context),
        ],
      ),
    );
  }
}
