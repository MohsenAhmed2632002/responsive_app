import 'package:flutter/material.dart';
import 'package:responsive_app/Views/DashBaordMobileLayout.dart';
import 'package:responsive_app/Views/DashBaordTabletLayoutWidget.dart';
import 'package:responsive_app/Widgets/AdaptiveLayoutWidget.dart';
import 'package:responsive_app/Views/DashBaordDesktopLayoutWidget.dart';

class SplashView extends StatefulWidget {
  SplashView._intarnal();
  static final SplashView _instance = SplashView._intarnal();
  factory SplashView() => _instance;
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      return Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AdaptiveLayoutBuilder(
            MobileLayout: (context) => DashBaordMobileLayout(),
            TabletLayout: (context) => DashBaordTabletLayoutWidget(),
            DestopLayout: (context) => DashBaordDesktopLayout(),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // child: Image.asset("${ImageAssets.imagepath}splash_logo.png"),
          ),
    );
  }
}
