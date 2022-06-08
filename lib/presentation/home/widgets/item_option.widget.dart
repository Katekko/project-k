import 'package:flutter/material.dart';

class ItemOptionWidget extends StatelessWidget {
  final String image;
  final int headNumber;
  final String name;

  const ItemOptionWidget({
    required this.image,
    required this.headNumber,
    required this.name,
  });

  List<Text> get buildNumbers {
    final textList = <Text>[];

    for (int i = headNumber; i < (headNumber + 4); i++) {
      final isTwoNumber = i > 9;

      textList.add(
        Text(
          '${!isTwoNumber ? '0' : ''}$i',
          style: const TextStyle(fontSize: 18),
        ),
      );
    }

    return textList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 155,
      child: Card(
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(3),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image, width: 100),
                  const SizedBox(width: 8),
                  Column(children: buildNumbers)
                ],
              ),
              const SizedBox(height: 5),
              Text(name, style: const TextStyle(fontSize: 22)),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
