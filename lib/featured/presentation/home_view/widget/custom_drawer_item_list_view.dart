import 'package:flutter/material.dart';
import 'package:responsive_app/featured/data/model/drawer_model.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_drawer_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({
    super.key,
    required this.drawerModelList,
  });

  final List<DrawerModel> drawerModelList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerModel: drawerModelList[index],
        );
      },
      itemCount: drawerModelList.length,
    );
  }
}
