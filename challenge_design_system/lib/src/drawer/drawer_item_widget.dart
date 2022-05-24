import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final bool isSelected;
  final String title;
  final IconData icon;
  const DrawerItemWidget({
    Key? key,
    this.isSelected = false,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: isSelected
              ? Theme.of(context).textSelectionTheme.selectionColor
              : Theme.of(context).colorScheme.inversePrimary,
        ),
        const SizedBox(width: 15),
        Text(
          title,
          style: isSelected
              ? Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).textSelectionTheme.selectionColor)
              : Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
