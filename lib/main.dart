import 'package:expense_mate/config/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/datasources/expense_db_helper.dart';
import 'presentation/bloc/expense_bloc.dart';
import 'presentation/screens/home/expenses_screen.dart';
import 'services/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize database
  final dbHelper = ExpenseDBHelper();
  await dbHelper.initDB();

  // Initialize notifications
  final notificationService = NotificationService();
  await notificationService.initNotifications();

  // Schedule daily reminder
  await notificationService.scheduleDailyReminder(
    0,
    "Daily Expense Reminder",
    "Don't forget to log your expenses today!",
  );

  runApp(ExpenseMateApp(dbHelper: dbHelper));
}

class ExpenseMateApp extends StatelessWidget {
  final ExpenseDBHelper dbHelper;

  const ExpenseMateApp({super.key, required this.dbHelper});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseBloc(dbHelper)..add(LoadExpenses()),
      child: MaterialApp(
        title: 'ExpenseMate',
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: const ExpensesScreen(),
      ),
    );
  }
}
