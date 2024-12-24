import 'package:expense_mate/config/route/route_constants.dart';
import 'package:expense_mate/core/enum/expense_category.dart';
import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/bloc/expense/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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

            final String dateHeader =
                state.selectedExpenseCategory == ExpenseCategory.daily
                    ? expense.date.toReadable
                    : state.selectedExpenseCategory == ExpenseCategory.weekly
                        ? expense.date.toWeeklyReadable
                        : expense.date.monthString;

            final bool shouldShowHeader =
                !displayedHeaders.contains(dateHeader);

            if (shouldShowHeader) {
              displayedHeaders.add(dateHeader);
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                    style: getTextTheme(context).headlineSmall,
                  ),
                  subtitle: Row(
                    children: [
                      Text(expense.date.toReadable),
                    ],
                  ),
                  onTap: () {
                    context.push(Routes.getAddExpenseRoute(), extra: {
                      'expense': expense,
                      'isEditing': true,
                    });
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
