import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_grid_item.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_list_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 16),
        Expanded(flex: 2, child: CustomGridItem()),
        Expanded(flex: 1, child: CustomListItem()),
      ],
    );
  }
}
