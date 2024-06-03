import 'package:dictionary_app/utils/constants.dart';
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
        body: const ListExpression(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 20.0,
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {
              // Open a search dialog or perform search action
              showModalBottomSheet(
                backgroundColor: primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
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
                            const Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Cherchez ici',
                                labelStyle: TextStyle(color: Colors.white),
                                border: OutlineInputBorder(),
                              ),
                            )),
                            const SizedBox(width: 4.0),
                            ElevatedButton(
                              onPressed: () {},
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
