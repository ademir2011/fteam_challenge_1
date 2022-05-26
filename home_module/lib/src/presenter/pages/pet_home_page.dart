import 'package:challenge_design_system/challenge_design_system.dart';
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
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: animValue,
      builder: (context, widget) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(animValue.value ? 25 : 0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: size.height * 0.175,
                  child: PetAppBarWidget(
                    onPressed: () {
                      animValue.change();
                    },
                    city: 'Kyiv',
                    title: 'Location',
                    country: 'Ukraine',
                  ),
                ),
              ),
              Container(
                height: size.height * 0.825,
                width: size.width,
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    const SearchWidget(hintText: 'Search pet to adopt'),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return PetCategoryMiniCardWidget(
                            category: 'Animal',
                            isSelected: index == 0,
                          );
                        },
                      ),
                    ),
                    PetCardWidget(
                      urlImage: 'https://imagensemoldes.com.br/wp-content/uploads/2020/07/Cat-PNG.png',
                      title: 'Sola',
                      description: 'Abyssinian cat',
                      yearsOld: '2',
                      distance: '3.6',
                      onTap: () => Modular.to.navigate('/detail'),
                    ),
                    PetCardWidget(
                      urlImage: 'https://imagensemoldes.com.br/wp-content/uploads/2020/07/Cat-PNG.png',
                      title: 'Sola',
                      description: 'Abyssinian cat',
                      yearsOld: '2',
                      distance: '3.6',
                      onTap: () => Modular.to.navigate('/detail'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
