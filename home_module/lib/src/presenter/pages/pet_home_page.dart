import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:home_module/src/presenter/pages/pet_menu_page.dart';

class PetHomePage extends StatefulWidget {
  const PetHomePage({Key? key}) : super(key: key);

  @override
  State<PetHomePage> createState() => _PetHomePageState();
}

class _PetHomePageState extends State<PetHomePage> {
  final animValue = Modular.get<AnimValue>();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animValue,
      builder: (context, widget) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(animValue.value ? 25 : 0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    animValue.change();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
