import 'package:flutter/material.dart';
import 'package:news_app/screen/splash_screen.dart';
import 'package:news_app/screen/third_screen.dart';
import 'package:news_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: const Text(
          'Новости',
          style: splashScreenText,
        ),
        actions: [
          InkWell(
            child: Image.asset('assets/images/Globus_icon.png'),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                NavButton(title: 'Всё'),
                NavButton(title: 'Интернет'),
                NavButton(title: 'Звонки'),
              ],
            ),
            const Post(title: 'Незаконное строительство'),
            const Post(
                title:
                    'Управление  по контролю, надзору\n за водными ресурсами ...'),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String title;
  const NavButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: navButtonStyle,
      onPressed: () {},
      child: Text(
        title,
        style: buttonText,
      ),
    );
  }
}

class Post extends StatelessWidget {
  final String title;
  const Post({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(
            vertical: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/facade.png',
                fit: BoxFit.cover,
                height: 156,
              ),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 11,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: postTitleText,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15),
                        color: Colors.white,
                        child:
                            Image.asset('assets/images/icon-arrowright.png'),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThirdScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );

    /*Column(
        children: [
          Image.asset(
            'assets/images/facade.png',
            height: 156,
            width: 320,
            fit: BoxFit.fill,
          ),
          Container(
            
            color: Colors.white,
            height: 60,
            child: const Text(
              'Незаконное строительство',
              style: postTitleText,
            ),
          ),
        ],
      ),*/
  }
}
