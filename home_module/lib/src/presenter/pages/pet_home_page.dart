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
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: SizedBox(
                  height: size.height * 0.175,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {
                          animValue.change();
                        },
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Location'),
                          Text('Location'),
                        ],
                      ),
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
                    ],
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
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                suffixIcon: Icon(Icons.filter_alt),
                                border: InputBorder.none,
                                hintText: 'Search pet to adopt',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.tertiary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.animation,
                                    size: 35,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Text('asdasd'),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 25),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffccd6d8),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: -10,
                                  child: const Image.network(
                                    'https://imagensemoldes.com.br/wp-content/uploads/2020/07/Cat-PNG.png',
                                  ),
                                  height: 175,
                                  width: 175,
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                margin: const EdgeInsets.only(
                                  top: 15,
                                  bottom: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [Text('Sola'), Icon(Icons.female)],
                                    ),
                                    Text('Abyssinian cat'),
                                    Text('2 years old'),
                                    Row(
                                      children: [
                                        Icon(Icons.map_sharp),
                                        Text('Distance: 3.6 km'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
