import 'package:challenge_design_system/challenge_design_system.dart';
import 'package:flutter/material.dart';
import 'package:home_module/src/presenter/pages/pet_menu_page.dart';

class MenuDrawerItemsWidget extends StatefulWidget {
  final ValueNotifier<MenuTypeEnum> menuTypeNotifier;

  const MenuDrawerItemsWidget({
    Key? key,
    required this.menuTypeNotifier,
  }) : super(key: key);

  @override
  State<MenuDrawerItemsWidget> createState() => _MenuDrawerItemsWidgetState();
}

class _MenuDrawerItemsWidgetState extends State<MenuDrawerItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<MenuTypeEnum>(
      valueListenable: widget.menuTypeNotifier,
      builder: (ctx, value, wid) => Column(
        children: [
          DrawerItemWidget(
            icon: Icons.pets,
            title: 'Adoption',
            isSelected: value == MenuTypeEnum.adoption,
            onTap: () => widget.menuTypeNotifier.value = MenuTypeEnum.adoption,
          ),
          const SizedBox(height: 35),
          DrawerItemWidget(
            icon: Icons.home,
            title: 'Donation',
            isSelected: value == MenuTypeEnum.donation,
            onTap: () => widget.menuTypeNotifier.value = MenuTypeEnum.donation,
          ),
          const SizedBox(height: 35),
          DrawerItemWidget(
            icon: Icons.add,
            title: 'Add pet',
            onTap: () {},
          ),
          const SizedBox(height: 35),
          DrawerItemWidget(
            icon: Icons.heart_broken,
            title: 'Favorites',
            onTap: () {},
          ),
          const SizedBox(height: 35),
          DrawerItemWidget(
            icon: Icons.message,
            title: 'Messages',
            onTap: () {},
          ),
          const SizedBox(height: 35),
          DrawerItemWidget(
            icon: Icons.person,
            title: 'Profile',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
