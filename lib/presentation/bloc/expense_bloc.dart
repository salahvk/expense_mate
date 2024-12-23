import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/models/expense_model.dart';
import '../../data/datasources/expense_db_helper.dart';

part 'expense_event.dart';
part 'expense_state.dart';

// Bloc Class
class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseDBHelper dbHelper;
  DateTime selectedDate = DateTime.now();
  // TimeOfDay timeOfDay = TimeOfDay.now();
  
  ExpenseBloc(this.dbHelper) : super(ExpenseInitial()) {
    // Load Expenses
    on<LoadExpenses>((event, emit) async {
      emit(ExpenseLoading());
      try {
        final expenses = await dbHelper.getExpenses();
        emit(ExpenseLoaded(expenses));
      } catch (e) {
        emit(ExpenseError("Failed to load expenses"));
      }
    });

    // Add Expense
    on<AddExpense>((event, emit) async {
      try {
        await dbHelper.addExpense(event.expense);
        add(LoadExpenses()); // Refresh the list
      } catch (e) {
        emit(ExpenseError("Failed to add expense"));
      }
    });

    // Update Expense
    on<UpdateExpense>((event, emit) async {
      try {
        await dbHelper.updateExpense(event.expense);
        add(LoadExpenses());
      } catch (e) {
        emit(ExpenseError("Failed to update expense"));
      }
    });

    // Delete Expense
    on<DeleteExpense>((event, emit) async {
      try {
        await dbHelper.deleteExpense(event.id);
        add(LoadExpenses());
      } catch (e) {
        emit(ExpenseError("Failed to delete expense"));
      }
    });
  }
}
