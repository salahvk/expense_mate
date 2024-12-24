import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/bloc/expense_bloc.dart';
import 'package:expense_mate/presentation/screens/add_expense/add_expense_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseHistory extends StatelessWidget {
  const ExpenseHistory({
    super.key,
    required this.expenses,
  });

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context) {
    // Track already displayed dates
    final Set<String> displayedHeaders = {};

    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: expenses.length,
          itemBuilder: (context, index) {
            final expense = expenses[index];

            // Get formatted date header (e.g., "Tue 24 Dec")
            final String dateHeader = state.selectedButtonIndex == 0
                ? expense.date.toReadable
                : state.selectedButtonIndex == 1
                    ? expense.date.toWeeklyReadable
                    : expense.date.monthString;

            // Check if this header has already been displayed
            final bool shouldShowHeader =
                !displayedHeaders.contains(dateHeader);

            if (shouldShowHeader) {
              // Add the date to the displayed set
              displayedHeaders.add(dateHeader);
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Show header only if it hasn't been displayed before
                if (shouldShowHeader)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      dateHeader,
                      style: getTextTheme(context).titleMedium,
                    ),
                  ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(expense.paymentType?.displayIcon),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$${expense.amount.toStringAsFixed(2)}",
                        style: getTextTheme(context).bodyMedium,
                      ),
                      Text(
                        expense.date.justTime,
                      ),
                    ],
                  ),
                  title: Text(
                    "${expense.name} - ${expense.date.toLocal()}".split(' ')[0],
                  ),
                  subtitle: Row(
                    children: [
                      Text(expense.date.toReadable),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AddExpenseScreen(),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
