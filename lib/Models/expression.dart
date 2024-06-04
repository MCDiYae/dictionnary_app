class Expression {
  final String expressionName;
  final String image;
  final String definition;
  final String example;

  Expression({
    required this.expressionName,
    required this.image,
    required this.definition,
    required this.example,
  });

  factory Expression.fromJson(Map<String, dynamic> json) {
    return Expression(
      expressionName: json['expressionName'],
      image: json['image'],
      definition: json['definition'],
      example: json['example'],
    );
  }
  
}
