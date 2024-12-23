import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/screens/add_expense/add_expense_screen.dart';
import 'package:expense_mate/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExpenseHistory extends StatelessWidget {
  const ExpenseHistory({
    super.key,
    required this.expenses,
  });

  final List<ExpenseModel> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap:
          true, // Makes the ListView non-scrollable if it's inside another scrollable widget
      physics:
          const NeverScrollableScrollPhysics(), // Prevent scrolling of this list inside a ScrollView
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
          title:
              Text("${expense.name} - ${expense.date.toLocal()}".split(' ')[0]),
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
  }
}

