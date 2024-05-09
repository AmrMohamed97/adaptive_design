import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_app_bar.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_drawer.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffCCCCCC),
      appBar: CustomAppBarWidget(onPresse: () {
        scaffoldKey.currentState?.openDrawer();
      }),
      body: const HomeViewBody(),
    );
  }
}
