import 'package:dictionary_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomSearchBar extends StatefulWidget {
  const BottomSearchBar({super.key});

  @override
  State<BottomSearchBar> createState() => _BottomSearchBarState();
}

class _BottomSearchBarState extends State<BottomSearchBar> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isExpanded ? _buildExpandedBar() : _buildCollapsedBar();
  }

  Widget _buildCollapsedBar() {
    return GestureDetector(
      onTap: _toggleExpand,
      child: Container(
        color: colorSearchButt,
        height: 30,
        child: const Center(
          child: Icon(Icons.keyboard_arrow_up, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildExpandedBar() {
    return Container(
      color: colorSearchButt,
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _toggleExpand,
            child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cherchez ici',
                    fillColor: cardColor,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    // Your search function here
                  },
                  style: ElevatedButton.styleFrom(
                    //minimumSize:const Size(double.infinity, 30),
                    backgroundColor:
                        appBarColor, // You can adjust the button color here
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          4), // Adjust corner radius as needed
                    ),
                  ),
                  child: const Text(
                    'Recherche',
                    style: TextStyle(
                      color: ecritureButtom,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.white70,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
