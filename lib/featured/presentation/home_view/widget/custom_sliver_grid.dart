import 'package:flutter/cupertino.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_grid_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return const CustomGridItem();
      },
      itemCount: 4,
    );
  }
}

