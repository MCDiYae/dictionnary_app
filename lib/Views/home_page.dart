import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/widgets/button_search_bar.dart';
import 'package:dictionary_app/widgets/list_expression.dart';
import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: nameApp),
        body: const Stack(
          children: [
            ListExpression(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomSearchBar(),
            ),
          ],
        ),
      ),
    );
  }
}
