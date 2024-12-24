import 'package:bloc_test/bloc_test.dart';
import 'package:expense_mate/core/enum/expense_category.dart';
import 'package:expense_mate/core/enum/payment_type.dart';
import 'package:expense_mate/data/datasources/expense_db_helper.dart';
import 'package:expense_mate/data/models/expense_model.dart';
import 'package:expense_mate/presentation/bloc/expense/expense_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockExpenseDBHelper extends Mock implements ExpenseDBHelper {}

void main() {
  late ExpenseBloc expenseBloc;
  late MockExpenseDBHelper mockDBHelper;

  setUp(() {
    mockDBHelper = MockExpenseDBHelper();
    expenseBloc = ExpenseBloc(mockDBHelper);
  });

  tearDown(() {
    expenseBloc.close();
  });

  group('ExpenseBloc Tests', () {
    final expense = ExpenseModel(
      name: 'Test Expense',
      id: 1,
      amount: 100.0,
      paymentType: PaymentType.cash,
      date: DateTime.now(),
    );

    blocTest<ExpenseBloc, ExpenseState>(
      'emits [loading, success] when FetchExpenses is added',
      build: () {
        when(() => mockDBHelper.getExpenses())
            .thenAnswer((_) async => [expense]);
        return expenseBloc;
      },
      act: (bloc) => bloc.add(const FetchExpenses()),
      expect: () => [
        ExpenseState.initial().copyWith(isLoading: true),
        ExpenseState.initial().copyWith(isLoading: false, expenses: [expense]),
      ],
      verify: (_) {
        verify(() => mockDBHelper.getExpenses()).called(1);
      },
    );

    blocTest<ExpenseBloc, ExpenseState>(
      'emits [loading, error] when FetchExpenses fails',
      build: () {
        when(() => mockDBHelper.getExpenses())
            .thenThrow(Exception('Failed to load expenses'));
        return expenseBloc;
      },
      act: (bloc) => bloc.add(const FetchExpenses()),
      expect: () => [
        ExpenseState.initial().copyWith(isLoading: true),
        ExpenseState.initial().copyWith(
            isLoading: false, errorMessage: 'Failed to load expenses'),
      ],
    );

    blocTest<ExpenseBloc, ExpenseState>(
      'emits [loading, success] when AddExpense is added',
      build: () {
        when(() => mockDBHelper.addExpense(expense)).thenAnswer((_) async => 1);
        when(() => mockDBHelper.getExpenses())
            .thenAnswer((_) async => [expense]);
        return expenseBloc;
      },
      act: (bloc) => bloc.add(AddExpense(expense: expense)),
      expect: () => [
        ExpenseState.initial().copyWith(isLoading: true),
        ExpenseState.initial().copyWith(isLoading: true),
        ExpenseState.initial().copyWith(isLoading: false, expenses: [expense]),
      ],
    );

    blocTest<ExpenseBloc, ExpenseState>(
      'emits updated state when UpdatePaymentTypeEvent is added',
      build: () => expenseBloc,
      act: (bloc) => bloc.add(const UpdatePaymentTypeEvent(PaymentType.bank)),
      expect: () => [
        ExpenseState.initial().copyWith(selectedPaymentType: PaymentType.bank),
      ],
    );

    blocTest<ExpenseBloc, ExpenseState>(
      'emits updated totals when UpdateExpenseCategory is added',
      build: () => expenseBloc,
      seed: () => ExpenseState.initial().copyWith(expenses: [expense]),
      act: (bloc) =>
          bloc.add(const UpdateExpenseCategory(ExpenseCategory.daily)),
      expect: () => [
        ExpenseState.initial().copyWith(
          expenses: [expense],
          selectedExpenseCategory: ExpenseCategory.daily,
          cashTotal: 100.0,
          bankTotal: 0.0,
        ),
      ],
    );
  });
}
