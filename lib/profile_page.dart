import 'package:flutter_web/material.dart';
import 'package:portfolio/responsive_widget.dart';
import 'dart:html' as html;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  List<Widget> navButtons() => [
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
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: navButtons(),
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
                  NavHeader(navButtons: navButtons()),
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
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;
  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
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
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("yr.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Yash\nRastogi",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Self-motivated student, with an eagerness to accept\n"
        "challenges while learning and gaining experience from them.\n"
        "Aspiring Flutter Developer and ML enthusiast.",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Resume"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  "https://drive.google.com/file/d/13Go8mTr33NV5C5g0z8HH3JF1CF_qucvM/view?usp=sharing",
                  "Resume");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
          ),
          OutlineButton(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            shape: StadiumBorder(),
            child: Text("Say Hi!"),
            color: Colors.red,
            onPressed: () {
              html.window.open("https://about.me/yashrastogi", "Yr");
            },
            padding: EdgeInsets.all(10),
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
          profileData,
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
          profileData,
        ],
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: "GitHub",
        onPressed: () {
          html.window.open("https://github.com/yashrastogi11", "Git");
        },
        color: Colors.orange,
      ),
      NavButton(
        text: "Twitter",
        onPressed: () {
          html.window.open("https://twitter.com/yash_rastogi1", "Twitter");
        },
        color: Colors.orange,
      ),
      NavButton(
        text: "LinkedIn",
        onPressed: () {
          html.window
              .open("https://www.linkedin.com/in/yash-rastogi/", "LinkedIn");
        },
        color: Colors.orange,
      ),
      NavButton(
        text: "Facebook",
        onPressed: () {
          html.window.open("https://www.facebook.com/yash.rastogi.581", "Fb");
        },
        color: Colors.orange,
      ),
      NavButton(
        text: "Instagram",
        onPressed: () {
          html.window.open("https://www.instagram.com/yashrastogi11/", "Insta");
        },
        color: Colors.orange,
      ),
    ];
  }

  Widget copyRightText() => Text(
        "Yash Rastogi ©️2019",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

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
          copyRightText(),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ...socialMediaWidgets(),
          SizedBox(
            height: 20,
          ),
          copyRightText(),
        ],
      ),
    );
  }
}
