part of 'expense_bloc.dart';

// Abstract State
abstract class ExpenseState extends Equatable {
  @override
  List<Object?> get props => [];
}

// Initial State
class ExpenseInitial extends ExpenseState {}

// Loading State
class ExpenseLoading extends ExpenseState {}

// Loaded State
class ExpenseLoaded extends ExpenseState {
  final List<ExpenseModel> expenses;

  ExpenseLoaded(this.expenses);

  @override
  List<Object?> get props => [expenses];
}

// Error State
class ExpenseError extends ExpenseState {
  final String message;

  ExpenseError(this.message);

  @override
  List<Object?> get props => [message];
}
