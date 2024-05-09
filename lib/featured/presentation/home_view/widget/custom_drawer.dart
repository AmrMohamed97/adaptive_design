import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_app/featured/data/model/drawer_model.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  final List<DrawerModel> drawerModelList = const [
    DrawerModel(
      icon: Icons.home,
      title: 'D A S H B O A R D',
    ),
    DrawerModel(
      icon: Icons.settings,
      title: 'S E T T I N G S',
    ),
    DrawerModel(
      icon: Icons.info,
      title: 'A B O U T',
    ),
    DrawerModel(
      icon: Icons.logout,
      title: 'L O G O U T',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: const Color(0xffCCCCCC),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16),
          CustomDrawerItemListView(drawerModelList: drawerModelList),
        ],
      ),
    );
  }
}
