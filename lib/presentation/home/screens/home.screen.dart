import 'package:flutter/material.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';

import '../widgets/item_option.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Escolha algum personagem para apostar:',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: const [
                    ItemOptionWidget(
                      betItem: BetItemModel(
                        id: 1,
                        name: 'Sylas',
                        image: 'assets/images/sylas.jpg',
                        headNumber: 1,
                      ),
                    ),
                    ItemOptionWidget(
                      betItem: BetItemModel(
                        id: 2,
                        name: 'Katarina',
                        image: 'assets/images/katarina.jpg',
                        headNumber: 5,
                      ),
                    ),
                    ItemOptionWidget(
                      betItem: BetItemModel(
                        id: 3,
                        name: 'Yasuo',
                        image: 'assets/images/yasuo.jpg',
                        headNumber: 9,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
