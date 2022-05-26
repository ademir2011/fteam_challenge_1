import 'package:flutter/material.dart';

class PetCardWidget extends StatelessWidget {
  final String urlImage;
  final String title;
  final String description;
  final String yearsOld;
  final String distance;

  const PetCardWidget({
    Key? key,
    required this.urlImage,
    required this.yearsOld,
    required this.title,
    required this.description,
    required this.distance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 25,
                          spreadRadius: 0,
                          offset: const Offset(-2, 25),
                          color: Colors.black.withOpacity(.05),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -10,
                  child: Image.network(
                    urlImage,
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
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 25,
                      spreadRadius: 0,
                      offset: const Offset(-2, 25),
                      color: Colors.black.withOpacity(.05),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Icon(
                          Icons.male,
                          color: Theme.of(context).colorScheme.onPrimary,
                        )
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 7),
                    Text('$yearsOld years old'),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Icon(Icons.location_on_sharp, size: 15),
                        const SizedBox(width: 5),
                        Text(
                          'Distance: $distance km',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
