import 'dart:convert';
import 'package:dictionary_app/Models/expression.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<List<Expression>> fetchExpressions() async {
  final String response =
      await rootBundle.loadString('assets/data/expressions.json');
  final List<dynamic> data = json.decode(response);

  return data.map((json) => Expression.fromJson(json)).toList();
}
