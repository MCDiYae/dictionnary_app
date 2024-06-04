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
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cherchez ici',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
