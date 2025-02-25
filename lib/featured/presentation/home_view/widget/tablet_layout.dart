import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_sliver_list.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_tablet_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          )
        ),
        CustomTabletList(),
        CustomSliverList(),
      ]
    );
  }
}