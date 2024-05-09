import 'package:flutter/material.dart';
import 'package:responsive_app/featured/data/model/drawer_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerModel});
  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          drawerModel.icon,
        ),
        title: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(drawerModel.title),
          ),
        ));
  }
}
