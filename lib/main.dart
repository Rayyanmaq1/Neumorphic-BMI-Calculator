import 'package:bmicalculator/View/BmiCalculator.dart';
import 'package:bmicalculator/utils/SizedConfig.dart';
import 'package:bmicalculator/utils/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        return NeumorphicApp(
          debugShowCheckedModeBanner: false,

          themeMode: ThemeMode.light,

          theme: NeumorphicThemeData(
            baseColor: whiteColor,
            lightSource: LightSource.topLeft,
            depth: 10,
          ),
          darkTheme: NeumorphicThemeData(
            baseColor: Color(0xFF3E3E3E),
            lightSource: LightSource.topLeft,
            depth: 6,
          ),
          // debugShowCheckedModeBanner: false,
          home: BmiCalCulator(),
        );
      });
    });
  }
}
