import 'package:flutter/material.dart';
import 'package:news_app/screen/third_screen.dart';

import '../style.dart';

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
  }
}
