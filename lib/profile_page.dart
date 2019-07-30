import 'package:flutter_web/material.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/responsive_widget.dart';
import 'dart:html' as html;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  List<Widget> navButtons(context) => [
        NavButton(
          text: "About",
          onPressed: () {
            html.window.open("https://github.com/yashrastogi11", "Yr");
          },
        ),
        NavButton(
          text: "Projects",
          onPressed: () {
            html.window.open(
                "https://github.com/yashrastogi11?tab=repositories",
                "projects");
          },
        ),
        NavButton(
          text: "Contact",
          onPressed: () {
            html.window.open("https://about.me/yashrastogi", "Yr");
          },
        ),
        // FlatButton(
        //     child: Text(
        //       "GO",
        //       textScaleFactor: 1.25,
        //     ),
        //     onPressed: () {
        //       Navigator.of(context).push(MaterialPageRoute(
        //           builder: (BuildContext context) => Contact()));
        //     }),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 243, 240),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 53, 71, 57),
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: navButtons(context),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NavHeader(
                    navButtons: navButtons(context),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  SocialInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;
  const NavHeader({Key key, this.navButtons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          YRDot(),
          if (!ResponsiveWidget.isSmallScreen(context))
            Row(
              children: navButtons,
            )
        ],
      ),
    );
  }
}

class YRDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "YR",
          textScaleFactor: 2,
          style: TextStyle(
            color: Color.fromARGB(255, 53, 71, 57),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 206, 133, 35),
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  const NavButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        text,
        textScaleFactor: 1.25,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("yr1.jpeg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  profileData(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi there! My name is",
            textScaleFactor: 2,
            style: TextStyle(
              color: Color.fromARGB(255, 179, 84, 23),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Yash\nRastogi",
            textScaleFactor: 5,
            style: TextStyle(
              color: Color.fromARGB(255, 53, 71, 57),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Self-motivated student, with an eagerness to accept\n"
            "challenges while learning and gaining experience from them.\n"
            "Aspiring Flutter Developer and ML enthusiast.",
            softWrap: true,
            textScaleFactor: 1.5,
            style: TextStyle(
              color: Color.fromARGB(255, 179, 84, 23),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ButtonTheme(
                minWidth: ResponsiveWidget.isSmallScreen(context) ? 120 : 90,
                child: RaisedButton(
                  onPressed: () {
                    html.window.open(
                        "https://drive.google.com/file/d/13Go8mTr33NV5C5g0z8HH3JF1CF_qucvM/view?usp=sharing",
                        "Resume");
                  },
                  shape: StadiumBorder(),
                  child: Text(
                    "Resume",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Color.fromARGB(255, 206, 133, 35),
                  padding: EdgeInsets.all(10),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ButtonTheme(
                minWidth: ResponsiveWidget.isSmallScreen(context) ? 120 : 90,
                child: OutlineButton(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 206, 133, 35),
                  ),
                  shape: StadiumBorder(),
                  child: Text(
                    "Say Hi!",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  color: Color.fromARGB(255, 206, 133, 35),
                  onPressed: () {
                    html.window.open("https://about.me/yashrastogi", "Yr");
                  },
                  padding: EdgeInsets.all(10),
                ),
              )
            ],
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          profileData(context),
        ],
      ),
      smallScreen: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData(context),
        ],
      ),
    );
  }
}

class IconButtonClass extends StatelessWidget {
  final image;
  final onPressed;

  const IconButtonClass({
    Key key,
    @required this.image,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width / 7.5
          : MediaQuery.of(context).size.width / 15,
      color: Colors.transparent,
      child: IconButton(
        icon: Image.asset(image),
        onPressed: onPressed,
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      IconButtonClass(
        image: "github.png",
        onPressed: () {
          html.window.open("https://www.github.com/yashrastogi11", "GitHub");
        },
      ),
      IconButtonClass(
        image: "twitter.png",
        onPressed: () {
          html.window.open("https://twitter.com/yash_rastogi1", "Twitter");
        },
      ),
      IconButtonClass(
        image: "linkedin.png",
        onPressed: () {
          html.window
              .open("https://www.linkedin.com/in/yash-rastogi/", "LinkedIn");
        },
      ),
      IconButtonClass(
        image: "facebook.png",
        onPressed: () {
          html.window.open("https://www.facebook.com/yash.rastogi.581", "Fb");
        },
      ),
      IconButtonClass(
        image: "instagram.png",
        onPressed: () {
          html.window.open("https://www.instagram.com/yashrastogi11/", "Insta");
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
        ],
      ),
      smallScreen: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: socialMediaWidgets(),
      ),
    );
  }
}
