import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../bloc/expense_bloc.dart';
import 'add_expense_screen.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Expenses")),
      body: BlocBuilder<ExpenseBloc, ExpenseState>(
        builder: (context, state) {
          if (state is ExpenseLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ExpenseLoaded) {
            final expenses = state.expenses;

            if (expenses.isEmpty) {
              return const Center(child: Text("No expenses found"));
            }

            return ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                final expense = expenses[index];

                return ListTile(
                  leading: CircleAvatar(
                    child: Icon(MdiIcons.cardBulleted),
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
                  title: Text("${expense.name} - ${expense.date.toLocal()}"
                      .split(' ')[0]),
                  // trailing: IconButton(
                  //   icon: const Icon(Icons.delete),
                  //   onPressed: () {
                  //     context
                  //         .read<ExpenseBloc>()
                  //         .add(DeleteExpense(expense.id ?? 0));
                  //   },
                  // ),
                  subtitle: Row(
                    children: [
                      Text(expense.date.toReadable),
                    ],
                  ),

                  onTap: () {
                    // Navigate to edit screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AddExpenseScreen(),
                      ),
                    );
                  },
                );
              },
            );
          } else if (state is ExpenseError) {
            return Center(child: Text(state.message));
          }

          return const Center(child: Text("No data"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddExpenseScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
