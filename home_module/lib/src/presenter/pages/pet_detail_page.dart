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
    final size = MediaQuery.of(context).size;

    return AnimatedBuilder(
      animation: animValue,
      builder: (context, widget) => AnimatedContainer(
        duration: const Duration(seconds: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(animValue.value ? 25 : 0),
        ),
        child: Scaffold(
          backgroundColor: const Color(0xffc7d0d4),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                    height: size.height * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back_rounded,
                          size: 35,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                        const Spacer(),
                        SizedBox(
                          child: Image.network(
                            'https://imagensemoldes.com.br/wp-content/uploads/2020/07/Cat-PNG.png',
                            height: size.height * 0.30,
                            width: size.width * 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.file_upload_outlined,
                          size: 35,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height * 0.5,
                    color: Theme.of(context).colorScheme.primary,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
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
                              const SizedBox(width: 10),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Kendall Jenner'),
                                        const SizedBox(height: 2.5),
                                        Text('Owner', style: Theme.of(context).textTheme.bodySmall),
                                      ],
                                    ),
                                    Text(
                                      'May 25, 2019',
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'My job requires moving to another country. I dont\'t have the opportunity to take the cat with me. I am looking for good people who will shelter my Sola.',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const SizedBox(height: 25),
                        Container(
                          height: 100,
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onPrimary,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: Row(
                            children: [
                              ElevatedButtonWidget(
                                onPressed: () {},
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              const SizedBox(width: 25),
                              Expanded(
                                child: ElevatedButtonWidget(
                                  onPressed: () {},
                                  child: Text(
                                    'Adoption',
                                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                          color: Theme.of(context).colorScheme.primary,
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
              Container(
                width: size.width,
                height: 135,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      spreadRadius: 2,
                      offset: const Offset(-2, 25),
                      color: Colors.black.withOpacity(.15),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Sola',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.male,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.5),
                    Row(
                      children: [
                        Text(
                          'Abyssinian cat',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const Spacer(),
                        Text(
                          '2 years old',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.5),
                    Row(
                      children: [
                        const Icon(Icons.location_on_rounded),
                        const SizedBox(width: 5),
                        Text(
                          '5 Bulvarna-Kudriavska Street, Kyiv',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                        ),
                      ],
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

class ElevatedButtonWidget extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;

  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        child: Center(child: child),
      ),
    );
  }
}
