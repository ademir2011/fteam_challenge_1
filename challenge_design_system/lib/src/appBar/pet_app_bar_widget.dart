import 'package:flutter/material.dart';

class PetAppBarWidget extends StatelessWidget {
  final String title;
  final String city;
  final String country;
  final void Function() onPressed;

  const PetAppBarWidget({
    Key? key,
    required this.title,
    required this.city,
    required this.country,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onPressed,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 2.5),
            Row(
              children: [
                const Icon(
                  Icons.location_on_sharp,
                  size: 17.5,
                ),
                const SizedBox(width: 5),
                Text(
                  '$city, ',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  country,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ],
            ),
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
    );
  }
}
