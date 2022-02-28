import 'package:flutter/material.dart';
import 'package:news_app/screen/splash_screen.dart';
import 'package:news_app/style.dart';

import 'components/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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

