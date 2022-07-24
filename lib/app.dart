import 'package:flutter/material.dart';
import 'package:xgrid/utils/theme_constants.dart';
import 'package:xgrid/utils/utils.dart';

import 'home/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xgrid Task',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: Utils.themeManager.themeMode,
      home: const HomeView(),
    );
  }

  @override
  void initState() {
    Utils.themeManager.addListener(themeListner);
    super.initState();
  }

  themeListner() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    Utils.themeManager.removeListener(themeListner);
    super.dispose();
  }
}
