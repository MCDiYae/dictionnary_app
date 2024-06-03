import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/Views/expression_page.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ExpressionCard extends StatelessWidget {
  final Expression expression;

  const ExpressionCard({required this.expression, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ExpressionPage(expression: expression),
        ),
      ),
      child: SizedBox(
        height: 70,
        child: Card(
          color: cardColor,
          margin: EdgeInsets.zero,
          elevation: 5.0,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromARGB(255, 84, 86, 126),
            ),
          ),
          child: ListTile(
            title: Text(expression.expressionName),
            leading: Image.asset(
              "assets/images/icons8.png",
              alignment: Alignment.center,
            ),
            //subtitle: Text(expression.definition),
          ),
        ),
      ),
    );
  }
}
