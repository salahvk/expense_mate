import 'package:expense_mate/core/utilities/getters/get_user_mail.dart';
import 'package:expense_mate/data/datasources/expense_db_helper.dart';
import 'package:expense_mate/presentation/screens/home/widgets/expense_history.dart';
import 'package:expense_mate/presentation/screens/home/widgets/expense_summary_card.dart';
import 'package:expense_mate/presentation/screens/home/widgets/selectable_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../bloc/expense_bloc.dart';
import '../add_expense/add_expense_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses"),
        actions: [
          IconButton(
              onPressed: () {
                ExpenseDBHelper().logoutUser(getUserEmail() ?? '');
              },
              icon: Icon(MdiIcons.logout))
        ],
      ),
      body: BlocBuilder<ExpenseBloc, ExpenseState>(
        builder: (context, state) {
          if (state is ExpenseLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ExpenseLoaded) {
            final expenses = state.expenses;

            if (expenses.isEmpty) {
              return const Center(child: Text("No expenses found"));
            }

            return ListView(children: [
              const ExpenseSummaryCard(),
              const SelectableButtonRow(),
              ExpenseHistory(expenses: expenses),
            ]);
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

// import 'package:flutter/material.dart';







