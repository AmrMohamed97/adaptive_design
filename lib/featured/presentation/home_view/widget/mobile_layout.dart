import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_sliver_grid.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          )
        ),
        CustomSliverGrid(),
        CustomSliverList(),
      ],
    );
  }
}