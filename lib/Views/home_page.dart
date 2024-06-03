import 'package:dictionary_app/Models/expression.dart';
import 'package:dictionary_app/utils/constants.dart';
import 'package:dictionary_app/utils/fetch_data.dart';
import 'package:dictionary_app/widgets/list_expression.dart';
import 'package:dictionary_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Expression> _allExpressions = [];
  List<Expression> _filteredExpressions = [];
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
    fetchExpressions().then((data) {
      setState(() {
        _allExpressions = data;
        _filteredExpressions = _allExpressions;
      });
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  _onSearchChanged() {
    setState(() {
      _filteredExpressions = _allExpressions
          .where((expression) => expression.expressionName
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(title: nameApp),
        body: ListExpression(expressions: _filteredExpressions),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 20.0,
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {
              // Open a search dialog or perform search action
              showModalBottomSheet(
                backgroundColor: colorSearchButt,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.arrow_downward_outlined),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Expanded(
                                child: TextField(
                              controller: _searchController,
                              decoration: const InputDecoration(
                                labelText: 'Cherchez ici',
                                labelStyle: TextStyle(color: colorSearchEcr),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: backColorButtom, width: 0.0)),
                                filled: true,
                                fillColor: backColorButtom,
                              ),
                            )),
                            const SizedBox(width: 4.0),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                              ),
                              child: const Text('Recherche'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            backgroundColor: primaryColor,
            child: const Icon(Icons.arrow_upward_outlined),
          ),
        ),
      ),
    );
  }
}
