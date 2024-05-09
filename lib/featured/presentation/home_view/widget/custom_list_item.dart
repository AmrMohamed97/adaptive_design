import 'package:flutter/cupertino.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffDBDBDB),
      ),
    );
  }
}
