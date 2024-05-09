import 'package:flutter/material.dart';

class TestClass extends StatelessWidget {
  const TestClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('My data is here',
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, 20),
              )),
          Text('all info you wanna to know i will tell you about it later',
              style: TextStyle(
                fontSize: getResponsiveFontSize(context, 16),
              )),
        ],
      ),
    );
  }
}

double getResponsiveFontSize(BuildContext context, int fontSize) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  responsiveFontSize.clamp(lowerLimit, upperLimit);
  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  }
  if (width < 900) {
    return width / 700;
  }
  return width / 1000;
}
