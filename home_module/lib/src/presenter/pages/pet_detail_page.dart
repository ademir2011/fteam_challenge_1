import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:home_module/src/presenter/pages/pet_menu_page.dart';

class PetDetailPage extends StatefulWidget {
  const PetDetailPage({Key? key}) : super(key: key);

  @override
  State<PetDetailPage> createState() => _PetDetailPageState();
}

class _PetDetailPageState extends State<PetDetailPage> {
  final animValue = Modular.get<AnimValue>();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animValue,
      builder: (context, widget) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(animValue.value ? 25 : 0),
        ),
        child: Container(),
      ),
    );
  }
}
