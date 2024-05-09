import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key, required this.onPresse});
  final VoidCallback onPresse;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth - 32 < 900) {
        return AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: onPresse,
          ),
        );
      } else {
        return const SizedBox();
      }
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
