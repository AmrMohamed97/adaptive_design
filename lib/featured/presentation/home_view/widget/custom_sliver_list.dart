import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/featured/presentation/home_view/widget/custom_list_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const CustomListItem();
      },
    );
  }
}
