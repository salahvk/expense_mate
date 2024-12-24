import 'package:expense_mate/core/enum/expense_category.dart';
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
                isSelected:
                    state.selectedExpenseCategory == ExpenseCategory.daily,
                onPressed: () {
                  context.read<ExpenseBloc>().add(
                      const ExpenseEvent.updateExpenseCategory(
                          ExpenseCategory.daily));
                },
              ),
            ),

            // Weekly button
            Expanded(
              child: ToggleButton(
                label: 'Weekly',
                index: 1,
                isSelected:
                    state.selectedExpenseCategory == ExpenseCategory.weekly,
                onPressed: () {
                  context
                      .read<ExpenseBloc>()
                      .add(const ExpenseEvent.updateExpenseCategory(
                        ExpenseCategory.weekly,
                      ));
                },
              ),
            ),

            // Monthly button
            Expanded(
              child: ToggleButton(
                label: 'Monthly',
                index: 2,
                isSelected:
                    state.selectedExpenseCategory == ExpenseCategory.monthly,
                onPressed: () {
                  context.read<ExpenseBloc>().add(
                      const ExpenseEvent.updateExpenseCategory(
                          ExpenseCategory.monthly));
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
