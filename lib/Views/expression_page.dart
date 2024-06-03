import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class ExpressionPage extends StatelessWidget {
  final Expression expression;

  const ExpressionPage({required this.expression, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: nameApp),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(expression.expressionName),
              //const SizedBox(height: 16.0),
              //const Divider(color: Colors.white),
              Image.asset(expression.image),
              //const SizedBox(height: 16.0),
              const Divider(color: Colors.white30),
              Text(
                expression.definition,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              const Divider(color: Colors.white30),
              Text(expression.example),
            ],
          ),
        ),
      ),
    );
  }
}
