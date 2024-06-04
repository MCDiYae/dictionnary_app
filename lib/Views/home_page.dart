import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/Models/list_expression.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/widgets/button_search_bar.dart';
import 'package:dictionary_app/widgets/list_expression.dart';

import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Expression> displayedExpressions = expressionData;

  void _filterExpressions(String query) {
    final filtered = expressionData.where((expression) {
      final expressionLower = expression.expressionName.toLowerCase();
      final queryLower = query.toLowerCase();
      return expressionLower.contains(queryLower);
    }).toList();

    setState(() {
      displayedExpressions = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: nameApp),
        body: Stack(
          children: [
            ListExpression(displayedExpressions),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomSearchBar(onSearch: _filterExpressions),
            ),
          ],
        ),
      ),
    );
  }
}
