import 'package:flutter_web/material.dart';
import 'package:portfolio/responsive_widget.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    skillData(context) => ResponsiveWidget.isLargeScreen(context)
        ? Stack(
            children: <Widget>[
              Positioned(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  // width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "skill.jpg",
                    color: Colors.white,
                    colorBlendMode: BlendMode.hardLight,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text(
                      "SKILLS",
                      textScaleFactor: 4,
                      style: TextStyle(
                        color: Color.fromARGB(255, 53, 71, 57),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        // decoration:
                        //     BoxDecoration(border: Border.all(color: Colors.black)),
                        height: 450,
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 6,
                              top: 30,
                              bottom: 30,
                              right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 310,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("ml.jpg"),
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
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 450,
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                height: 200,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("app.jpg"),
                              ),
                              SizedBox(
                                height: 20,
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
                          margin: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 6,
                              top: 30,
                              bottom: 30,
                              left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 310,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("coding.jpg"),
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
            ],
          )
        : Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
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
                        height: 350,
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("ml.jpg"),
                              ),
                              Text(
                                "Machine\nLearning",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 53, 71, 57),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Container(
                        height: 350,
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("app.jpg"),
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
                        height: 350,
                        child: Card(
                          elevation: 0,
                          margin: EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 250,
                                padding: EdgeInsets.all(10),
                                child: Image.asset("coding.jpg"),
                              ),
                              Text(
                                "Competetive\nCoding",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 53, 71, 57),
                                    fontWeight: FontWeight.bold),
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
