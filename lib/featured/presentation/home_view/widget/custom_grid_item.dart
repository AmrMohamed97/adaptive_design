import 'package:flutter/cupertino.dart';

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffABABAB),
      ),
    );
  }
}
