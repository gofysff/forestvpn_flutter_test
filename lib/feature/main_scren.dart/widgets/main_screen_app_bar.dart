import 'package:flutter/material.dart';
import 'package:forestvpn_test/ui/ui.dart';

class MainScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainScreenAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
          size: 20,
        ),
        onPressed: () {},
      ),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Mark all read',
            style: context.textTheme.titleMedium,
          ),
        )
      ],
      elevation: 0,
      title: Text(
        'Notification',
        style: context.textTheme.titleMedium,
      ),
    );
  }
}
