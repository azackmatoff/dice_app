import 'dart:developer';

import 'package:dice_app/provider/providers/home_page_provider.dart';
import 'package:flutter/material.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/flutter_way/business_logic/home_page_business_logic.dart';
import 'package:dice_app/widgets/dice_widget.dart';
import 'package:provider/provider.dart';

class ProviderHomePage extends StatefulWidget {
  const ProviderHomePage({super.key});

  @override
  _ProviderHomePageState createState() => _ProviderHomePageState();
}

class _ProviderHomePageState extends State<ProviderHomePage> {
  /// final, const, var, dynamic
  /// final - runtime constant
  /// const - compile time constant
  /// var vs dynamic - var is a type inference,
  /// dynamic is a type that can be changed

  int count = 0;
  @override
  Widget build(BuildContext context) {
    count++;
    log('count $count');

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
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child) {
                return Row(
                  children: [
                    DiceWidget(diceNumber: provider.firstDice),
                    const SizedBox(width: 18),
                    DiceWidget(diceNumber: provider.secondDice),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void ozgort() {
    context.read<HomePageProvider>().ozgort();
  }
}
