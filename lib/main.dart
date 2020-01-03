import 'package:flutter/material.dart';
import 'package:myblog/config/themes.dart';
import 'package:myblog/widgets/theme_inherited_widget.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: BugraGoksu(),
    );
  }
}

class BugraGoksu extends StatelessWidget {
  const BugraGoksu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buğra Göksu Kişisel Blog',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: HomePage(),
    );
  }
}
