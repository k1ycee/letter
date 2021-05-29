import 'package:custom_paint/painters/heart.dart';
import 'package:custom_paint/widgets/text_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;
  Tween<double>? tween;
  Duration? duration;

  @override
  void initState() {
    super.initState();

    tween = Tween(begin: 0.5, end: 1.0);
    duration = Duration(milliseconds: 1000);
    controller = AnimationController(vsync: this, duration: duration);

    final CurvedAnimation curve = CurvedAnimation(
      parent: controller!,
      curve: Curves.linear,
    );
    animation = tween!.animate(curve);
    animation!.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller!.forward();
      }
    });
    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 30,
            right: 20,
            bottom: 20,
            left: 20,
            child: Container(
                padding: EdgeInsets.all(25),
                height: 50,
                width: 50,
                color: Colors.amber.withOpacity(0.1),
                child: ListView(
                  children: [
                    text("Hey There,"),
                    SizedBox(
                      height: 20,
                    ),
                    text(
                        "Wow been at least 7 years we've known each other and wow well we can safely say we've watched each other grow."),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "I know you may be wondering why I didn't just write this as a text and send to you well, you're not wrong and I thought it would be cool to do it this way actually. You've always heard me yap about being a programmer well time for you to get this letter first hand from me writing a program with you reading a letter which is your job as a lawyer.😉"),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "You've really come a long way I mean 20 is a big number and heck there is a bunch of things that happen when you turn 20 🤣🤣🤣🤣, all adult things start hapenning to you being broke, all your friends seem to be having so much sex apart from you 😆😆😆, well we've already talked about this before so I don't think I need to tell you more on it. I trust you to make the right decisions when that time comes."),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "Well enough of craziness uhhh, tsk this morning I was like I should say what is in my mind well I didn't write this letter till this evening because seems like all that was in my head was a love story and honestly I can't honestly answer the question of if I want to let me self be vunerable, I don't really trust me self on so many levels and I seriously value our friendship and who we are and how far we've come as friends at least I speak for myself when I say to some extent I'm stable and honestly I hope you have moved to more stable grounds too."),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "Well it's your day today and I think would have been so much fun if we shared this day together it's your big 20 I might have gotten you a gift maybe we share a hug because I'm in dire need of one 😥, well maybe another time. We could also share a cake tell boring jokes and laugh ourself stupid hopefully not getting drunk and doing things we regret later 😂. Man today would have been fun, well there will be other birthdays to celebrate God keeping us all alive and yes we'll max out on the fun we're going to have well till then right?"),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "You're in your second year life's going great and all and I pray that God keeps it that way till you graduate and finish your law school, like real smiles and not those ones you do for your photo shoots but the ones that indicate you're genuinely happy, I also pray God provides you the wisdom to navigate your early 20's because he knows, sees, and understands all. I pray he gives you retentive memory, understanding, strength and perseverance to run through your education and also finish it too. I'd say also ability to discern the right guy for yourself too but for some funny reason you'd say it is me 😫 (I no even believe myself reach like that but I can't fight fate now can I 🤷‍♂️)"),
                    SizedBox(
                      height: 10,
                    ),
                    text(
                        "I pray you get as much money as you want and more(so I can become your sugar boy yunno 😉)."),
                    SizedBox(
                      height: 10,
                    ),
                    text("Well I think I'm out of what to say now 🙂"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      text("Love ThankGod 😘😘😘"),
                    ]),
                    text(
                        "If the 3 no do you, come Enugu there's more where that came from my dear.")
                  ],
                )),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              child: CustomPaint(
                painter: Heart(color: Colors.redAccent[400]),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 50,
              width: 50,
              child: CustomPaint(
                painter: Heart(color: Colors.redAccent[400]),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              child: CustomPaint(
                painter: Heart(color: Colors.redAccent[400]),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              height: 50,
              width: 50,
              child: CustomPaint(
                painter: Heart(color: Colors.redAccent[400]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
