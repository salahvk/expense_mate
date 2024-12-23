import 'package:expense_mate/presentation/screens/home/home_screen.dart';
import 'package:expense_mate/presentation/screens/home/widgets/toggle_button.dart';
import 'package:flutter/material.dart';

class SelectableButtonRow extends StatefulWidget {
  const SelectableButtonRow({super.key});

  @override
  _SelectableButtonRowState createState() => _SelectableButtonRowState();
}

class _SelectableButtonRowState extends State<SelectableButtonRow> {
  // Variable to keep track of selected index
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Daily button
        Expanded(
          child: ToggleButton(
            label: 'Daily',
            index: 0,
            isSelected: _selectedIndex == 0,
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
        ),

        // Weekly button
        Expanded(
          child: ToggleButton(
            label: 'Weekly',
            index: 1,
            isSelected: _selectedIndex == 1,
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
        ),

        // Monthly button
        Expanded(
          child: ToggleButton(
            label: 'Monthly',
            index: 2,
            isSelected: _selectedIndex == 2,
            onPressed: () {
              setState(() {
                _selectedIndex = 2;
              });
            },
          ),
        ),
      ],
    );
  }
}
