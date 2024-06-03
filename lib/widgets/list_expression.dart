
import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/utils/fetch_data.dart';
import 'package:dictionary_app/widgets/expression_card.dart';
import 'package:flutter/material.dart';

class ListExpression extends StatelessWidget {
  final List<Expression> expressions;
  const ListExpression({super.key, required this.expressions});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Expression>>(
      future: fetchExpressions(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No expressions found'));
        } else {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final expression = snapshot.data![index];
              return ExpressionCard(expression: expression);
            },
          );
        }
      },
    );
  }
}
