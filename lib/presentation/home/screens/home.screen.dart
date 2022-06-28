import 'package:flutter/material.dart';
import 'package:project_k/domain/bet/models/bet_item.model.dart';
import 'package:project_k/presentation/shared/base_screen.widget.dart';

import '../widgets/item_option.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreenWidget(
        title: 'Escolha algum personagem para apostar:',
        children: [
          Wrap(
            children: [
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
    );
  }
}
