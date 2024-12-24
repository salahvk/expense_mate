import 'dart:async';

import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/expense_db_helper.dart';
import '../../data/models/expense_model.dart';

part 'expense_bloc.freezed.dart';
part 'expense_event.dart';
part 'expense_state.dart';

// Bloc Class
class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  final ExpenseDBHelper dbHelper;

  ExpenseBloc(this.dbHelper) : super(ExpenseState.initial()) {
    on<UpdatePaymentTypeEvent>(_onUpdatePaymentType);
    on<UpdateSelectedDate>(_onUpdateSelectedDate);
    // Fetch Expenses
    on<FetchExpenses>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final expenses = await dbHelper.getExpenses();
        emit(state.copyWith(isLoading: false, expenses: expenses));
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "Failed to load expenses"));
      }
    });

    // Add Expense
    on<AddExpense>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        await dbHelper.addExpense(event.expense);
        add(const FetchExpenses());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "Failed to add expense"));
      }
    });

    // Update Expense
    on<UpdateExpense>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        await dbHelper.updateExpense(event.expense);
        add(const FetchExpenses());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "Failed to update expense"));
      }
    });

    // Delete Expense
    on<DeleteExpense>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        await dbHelper.deleteExpense(event.expenseId);
        add(const FetchExpenses());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, errorMessage: "Failed to delete expense"));
      }
    });

    //   // Clear Expenses
    //   on<ClearExpenses>((event, emit) async {
    //     emit(state.copyWith(isLoading: true));
    //     try {
    //       await dbHelper.clearExpenses();
    //       add(const FetchExpenses());
    //     } catch (e) {
    //       emit(state.copyWith(isLoading: false, errorMessage: "Failed to clear expenses"));
    //     }
    //   });
  }

  FutureOr<void> _onUpdatePaymentType(
      UpdatePaymentTypeEvent event, Emitter<ExpenseState> emit) {
    emit(state.copyWith(selectedPaymentType: event.paymentType));
  }

  FutureOr<void> _onUpdateSelectedDate(
      UpdateSelectedDate event, Emitter<ExpenseState> emit) {
    emit(state.copyWith(selectedDateTime: event.selectedDateTime));
  }
}
