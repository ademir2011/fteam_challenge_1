import 'package:flutter/material.dart';

class PetCategoryMiniCardWidget extends StatelessWidget {
  final String category;
  final bool isSelected;

  const PetCategoryMiniCardWidget({
    Key? key,
    required this.category,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: isSelected ? Theme.of(context).colorScheme.tertiary : Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 25,
                  spreadRadius: 0,
                  offset: const Offset(-2, 25),
                  color: Colors.black.withOpacity(.05),
                ),
              ],
            ),
            child: Icon(
              Icons.animation,
              size: 35,
              color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: 15),
          Text(category),
        ],
      ),
    );
  }
}
