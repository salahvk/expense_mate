import 'package:expense_mate/config/theme/color.dart';
import 'package:expense_mate/core/enum/expense_category.dart';
import 'package:expense_mate/presentation/bloc/expense/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExpenseSummaryCard extends StatefulWidget {
  const ExpenseSummaryCard({super.key});

  @override
  State<ExpenseSummaryCard> createState() => _ExpenseSummaryCardState();
}

class _ExpenseSummaryCardState extends State<ExpenseSummaryCard> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<ExpenseBloc>().add(const ExpenseEvent.updateExpenseCategory(ExpenseCategory.daily));
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Card(
          elevation: 8,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expense Summary',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.trending_up,
                      color: Colors.green,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Expense breakdown section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildSummaryCard(
                      context,
                      'Cash',
                      state.cashTotal,
                      MdiIcons.cash100,
                      Colors.green.shade300,
                    ),
                    _buildSummaryCard(
                      context,
                      'Bank',
                      state.bankTotal,
                      Icons.account_balance,
                      ExpenseMateColors.primary,
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Total expenses section
                Center(
                  child: Text(
                    '${state.selectedExpenseCategory.displayName} Expenses: \$${(state.bankTotal + state.cashTotal).toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ExpenseMateColors.primary,fontSize: 20
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSummaryCard(
    BuildContext context,
    String label,
    double amount,
    IconData icon,
    Color color,
  ) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.3,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 36),
            const SizedBox(height: 8),
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${amount.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
