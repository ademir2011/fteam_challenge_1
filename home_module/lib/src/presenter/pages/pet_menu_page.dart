import 'package:challenge_design_system/challenge_design_system.dart';
import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';
import 'package:home_module/src/presenter/pages/pet_detail_page.dart';
import 'package:home_module/src/presenter/pages/pet_home_page.dart';

class PetMenuPage extends StatefulWidget {
  const PetMenuPage({Key? key}) : super(key: key);

  @override
  State<PetMenuPage> createState() => _PetMenuPageState();
}

class AnimValue extends ValueNotifier<bool> {
  AnimValue() : super(false);

  void change() => value = !value;
}

class _PetMenuPageState extends State<PetMenuPage> {
  final animValue = Modular.get<AnimValue>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
      body: AnimatedBuilder(
        animation: animValue,
        builder: (context, widget) {
          return Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kendall Jenner',
                                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                              Text(
                                'Active status',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      const DrawerItemWidget(icon: Icons.pets, title: 'Adoption', isSelected: true),
                      const SizedBox(height: 35),
                      const DrawerItemWidget(icon: Icons.home, title: 'Donation'),
                      const SizedBox(height: 35),
                      const DrawerItemWidget(icon: Icons.add, title: 'Add pet'),
                      const SizedBox(height: 35),
                      const DrawerItemWidget(icon: Icons.heart_broken, title: 'Favorites'),
                      const SizedBox(height: 35),
                      const DrawerItemWidget(icon: Icons.message, title: 'Messages'),
                      const SizedBox(height: 35),
                      const DrawerItemWidget(icon: Icons.person, title: 'Profile'),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Settings',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          const SizedBox(width: 15),
                          Container(
                            height: 15,
                            width: 1,
                            color: Theme.of(context).colorScheme.inversePrimary,
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Log out',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                top: animValue.value ? size.width * 0.35 : 0,
                bottom: animValue.value ? size.width * 0.35 : 0,
                left: animValue.value ? size.width * 0.55 : 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: const PetDetailPage(),
                ),
              ),
              AnimatedPositioned(
                top: animValue.value ? size.width * 0.25 : 0,
                bottom: animValue.value ? size.width * 0.25 : 0,
                left: animValue.value ? size.width * 0.65 : 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  width: size.width,
                  height: size.height,
                  child: const PetHomePage(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
