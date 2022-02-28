import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app/style.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  static String newsTitle =
      'Управление по контролю, надзору за\nводными ресурсами и объектами (далее\nУКНВРиО) 29 июля 2020 года провело\nрабочее видео-совещание.';
  static DateTime t = DateTime.now();
  static DateFormat dFormatter = DateFormat('yy.MM.dd');
  static String formatted = dFormatter.format(t);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bgColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              newsTitle,
              style: postTitleText,
            ),
            Text(
              'Дата $formatted',
              style: dateTimeStyle,
            ),
            Image.asset(
              'assets/images/image 1.png',
              fit: BoxFit.cover,
              height: 186,
            ),
            Image.asset(
              'assets/images/image 2.png',
              fit: BoxFit.cover,
              height: 186,
            ),
          ],
        ),
      ),
    );
  }
}
