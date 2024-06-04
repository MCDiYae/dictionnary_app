import 'dart:convert';

import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/widgets/button_search_bar.dart';
import 'package:dictionary_app/widgets/list_expression.dart';

import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Expression> displayedExpressions = [];
  List<Expression> allExpressions = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    final String response = await rootBundle.loadString('assets/data/expressions.json');
    final data = await json.decode(response) as List;
    setState(() {
      allExpressions = data.map((json) => Expression.fromJson(json)).toList();
      displayedExpressions = allExpressions;
    });
  }

  void _filterExpressions(String query) {
    final filtered = allExpressions.where((expression) {
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
