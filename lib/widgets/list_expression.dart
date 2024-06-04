import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/Views/expression_page.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ListExpression extends StatelessWidget {
  final List<Expression> expressions;

  const ListExpression(this.expressions, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expressions.length,
      itemBuilder: (context, index) {
        final expression = expressions[index];
        return Container(
          height: 60,
          decoration: const BoxDecoration(
              color: cardColor,
              border: Border(
                  bottom: BorderSide(
                color: Color.fromARGB(255, 84, 86, 126),
                style: BorderStyle.solid,
              ))),
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExpressionPage(expression: expression),
              ),
            ),
            leading: Image.asset(expression.image),
            title: Text(expression.expressionName),
          ),
        );
      },
    );
  }
}
