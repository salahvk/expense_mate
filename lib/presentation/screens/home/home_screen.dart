import 'package:expense_mate/config/route/route_constants.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/core/utilities/getters/get_user_mail.dart';
import 'package:expense_mate/data/datasources/expense_db_helper.dart';
import 'package:expense_mate/presentation/bloc/auth/auth_bloc.dart';
import 'package:expense_mate/presentation/screens/home/widgets/expense_history.dart';
import 'package:expense_mate/presentation/screens/home/widgets/expense_summary_card.dart';
import 'package:expense_mate/presentation/screens/home/widgets/selectable_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../bloc/expense/expense_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Expense Mate",style: getTextTheme(context).headlineMedium,),
        actions: const [HomeLogoutButton()],
      ),
      body: BlocBuilder<ExpenseBloc, ExpenseState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.expenses.isNotEmpty) {
            final expenses = state.expenses;

            return ListView(children: [
              const ExpenseSummaryCard(),
              const SelectableButtonRow(),
              ExpenseHistory(
                expenses: expenses,
              ),
            ]);
          } else if (state.errorMessage != null) {
            return Center(child: Text(state.errorMessage!));
          }

          return const Center(child: Text("No data"));
        },
      ),
      floatingActionButton: const HomeFloatingActionButton(),
    );
  }
}

class HomeLogoutButton extends StatelessWidget {
  const HomeLogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.read<AuthBloc>().add(
                const AuthEvent.logout(),
              );
          ExpenseDBHelper().logoutUser(getUserEmail() ?? '');
          context.pushReplacement(Routes.getAuthRoute(), extra: true);
        },
        icon: Icon(MdiIcons.logout));
  }
}

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.push(Routes.getAddExpenseRoute(), extra: {
          'isEditing': false,
        });
      },
      child: const Icon(Icons.add),
    );
  }
}
