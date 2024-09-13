import 'package:flutter/material.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/flutter_way/business_logic/home_page_business_logic.dart';
import 'package:dice_app/widgets/dice_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// final, const, var, dynamic
  /// final - runtime constant
  /// const - compile time constant
  /// var vs dynamic - var is a type inference,
  /// dynamic is a type that can be changed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text(
          'Dice',
          style: AppTextStyles.appBarTitle,
        ),
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: InkWell(
            onTap: ozgort,
            child: Row(
              children: [
                DiceWidget(diceNumber: homePageBusinessLogic.firstDice),
                const SizedBox(width: 18),
                DiceWidget(diceNumber: homePageBusinessLogic.secondDice),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ozgort() {
    homePageBusinessLogic.ozgort();

    setState(() {});
  }
}
