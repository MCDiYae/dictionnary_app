import 'package:dictionary_app/utils/constants.dart';
import 'package:flutter/material.dart';

class BottomSearchBar extends StatefulWidget {
  final Function(String) onSearch;

  const BottomSearchBar({super.key, required this.onSearch});

  @override
  State<BottomSearchBar> createState() => _BottomSearchBarState();
}

class _BottomSearchBarState extends State<BottomSearchBar> {
  bool _isExpanded = false;
  final TextEditingController _controller = TextEditingController();

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
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: _toggleExpand,
            child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    hintText: 'Cherchez ici',
                    fillColor: cardColor,
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    widget.onSearch(_controller.text);
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
