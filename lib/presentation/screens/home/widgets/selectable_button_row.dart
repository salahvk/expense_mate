import 'package:expense_mate/presentation/bloc/expense/expense_bloc.dart';
import 'package:expense_mate/presentation/screens/home/widgets/toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectableButtonRow extends StatelessWidget {
  const SelectableButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Daily button
            Expanded(
              child: ToggleButton(
                label: 'Daily',
                index: 0,
                isSelected: state.selectedButtonIndex == 0,
                onPressed: () {
                  context.read<ExpenseBloc>().add(const ExpenseEvent.updateSelectedIndex(0));
                },
              ),
            ),

            // Weekly button
            Expanded(
              child: ToggleButton(
                label: 'Weekly',
                index: 1,
                isSelected: state.selectedButtonIndex == 1,
                onPressed: () {
                  context.read<ExpenseBloc>().add(const ExpenseEvent.updateSelectedIndex(1));
                },
              ),
            ),

            // Monthly button
            Expanded(
              child: ToggleButton(
                label: 'Monthly',
                index: 2,
                isSelected: state.selectedButtonIndex == 2,
                onPressed: () {
                  context.read<ExpenseBloc>().add(const ExpenseEvent.updateSelectedIndex(2));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
