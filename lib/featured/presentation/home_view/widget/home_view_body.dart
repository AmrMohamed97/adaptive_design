import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/desktop_layout.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/mobile_layout.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AdaptiveLayout(
        mobileLayout:(context)=> const MobileLayout(),
        tabletLayout: (context)=> const TabletLayout(),
        desktopLayout: (context)=>const DesktopLayout(),
        ),
    );
  }
}

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout;
    final WidgetBuilder tabletLayout;
    final WidgetBuilder desktopLayout;

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return   mobileLayout(context);
        } else if (constraints.maxWidth < 900) {
          return   tabletLayout(context);
        } else {
          return   desktopLayout(context);
        }
      },
    );
  }
}
