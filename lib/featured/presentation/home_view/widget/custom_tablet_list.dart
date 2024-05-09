import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_grid_item.dart';

class CustomTabletList extends StatelessWidget {
  const CustomTabletList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 175,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, intex) {
            return const Padding(
              padding: EdgeInsetsDirectional.only(start: 16.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: CustomGridItem(),
              ),
            );
          },
        ),
      ),
    );
  }
}
