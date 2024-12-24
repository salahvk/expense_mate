// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseEventCopyWith<$Res> {
  factory $ExpenseEventCopyWith(
          ExpenseEvent value, $Res Function(ExpenseEvent) then) =
      _$ExpenseEventCopyWithImpl<$Res, ExpenseEvent>;
}

/// @nodoc
class _$ExpenseEventCopyWithImpl<$Res, $Val extends ExpenseEvent>
    implements $ExpenseEventCopyWith<$Res> {
  _$ExpenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(
          _$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseModel expense});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(
      _$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$AddExpenseImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as ExpenseModel,
    ));
  }
}

/// @nodoc

class _$AddExpenseImpl implements AddExpense {
  const _$AddExpenseImpl({required this.expense});

  @override
  final ExpenseModel expense;

  @override
  String toString() {
    return 'ExpenseEvent.addExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      __$$AddExpenseImplCopyWithImpl<_$AddExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return addExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return addExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class AddExpense implements ExpenseEvent {
  const factory AddExpense({required final ExpenseModel expense}) =
      _$AddExpenseImpl;

  ExpenseModel get expense;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteExpenseImplCopyWith<$Res> {
  factory _$$DeleteExpenseImplCopyWith(
          _$DeleteExpenseImpl value, $Res Function(_$DeleteExpenseImpl) then) =
      __$$DeleteExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int expenseId});
}

/// @nodoc
class __$$DeleteExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$DeleteExpenseImpl>
    implements _$$DeleteExpenseImplCopyWith<$Res> {
  __$$DeleteExpenseImplCopyWithImpl(
      _$DeleteExpenseImpl _value, $Res Function(_$DeleteExpenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenseId = null,
  }) {
    return _then(_$DeleteExpenseImpl(
      expenseId: null == expenseId
          ? _value.expenseId
          : expenseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteExpenseImpl implements DeleteExpense {
  const _$DeleteExpenseImpl({required this.expenseId});

  @override
  final int expenseId;

  @override
  String toString() {
    return 'ExpenseEvent.deleteExpense(expenseId: $expenseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteExpenseImpl &&
            (identical(other.expenseId, expenseId) ||
                other.expenseId == expenseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expenseId);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      __$$DeleteExpenseImplCopyWithImpl<_$DeleteExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return deleteExpense(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return deleteExpense?.call(expenseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(expenseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return deleteExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return deleteExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (deleteExpense != null) {
      return deleteExpense(this);
    }
    return orElse();
  }
}

abstract class DeleteExpense implements ExpenseEvent {
  const factory DeleteExpense({required final int expenseId}) =
      _$DeleteExpenseImpl;

  int get expenseId;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteExpenseImplCopyWith<_$DeleteExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateExpenseImplCopyWith<$Res> {
  factory _$$UpdateExpenseImplCopyWith(
          _$UpdateExpenseImpl value, $Res Function(_$UpdateExpenseImpl) then) =
      __$$UpdateExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExpenseModel expense});
}

/// @nodoc
class __$$UpdateExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$UpdateExpenseImpl>
    implements _$$UpdateExpenseImplCopyWith<$Res> {
  __$$UpdateExpenseImplCopyWithImpl(
      _$UpdateExpenseImpl _value, $Res Function(_$UpdateExpenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$UpdateExpenseImpl(
      expense: null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as ExpenseModel,
    ));
  }
}

/// @nodoc

class _$UpdateExpenseImpl implements UpdateExpense {
  const _$UpdateExpenseImpl({required this.expense});

  @override
  final ExpenseModel expense;

  @override
  String toString() {
    return 'ExpenseEvent.updateExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateExpenseImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      __$$UpdateExpenseImplCopyWithImpl<_$UpdateExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return updateExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return updateExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return updateExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return updateExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateExpense != null) {
      return updateExpense(this);
    }
    return orElse();
  }
}

abstract class UpdateExpense implements ExpenseEvent {
  const factory UpdateExpense({required final ExpenseModel expense}) =
      _$UpdateExpenseImpl;

  ExpenseModel get expense;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateExpenseImplCopyWith<_$UpdateExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchExpensesImplCopyWith<$Res> {
  factory _$$FetchExpensesImplCopyWith(
          _$FetchExpensesImpl value, $Res Function(_$FetchExpensesImpl) then) =
      __$$FetchExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchExpensesImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$FetchExpensesImpl>
    implements _$$FetchExpensesImplCopyWith<$Res> {
  __$$FetchExpensesImplCopyWithImpl(
      _$FetchExpensesImpl _value, $Res Function(_$FetchExpensesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchExpensesImpl implements FetchExpenses {
  const _$FetchExpensesImpl();

  @override
  String toString() {
    return 'ExpenseEvent.fetchExpenses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return fetchExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return fetchExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (fetchExpenses != null) {
      return fetchExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return fetchExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return fetchExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (fetchExpenses != null) {
      return fetchExpenses(this);
    }
    return orElse();
  }
}

abstract class FetchExpenses implements ExpenseEvent {
  const factory FetchExpenses() = _$FetchExpensesImpl;
}

/// @nodoc
abstract class _$$ClearExpensesImplCopyWith<$Res> {
  factory _$$ClearExpensesImplCopyWith(
          _$ClearExpensesImpl value, $Res Function(_$ClearExpensesImpl) then) =
      __$$ClearExpensesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearExpensesImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$ClearExpensesImpl>
    implements _$$ClearExpensesImplCopyWith<$Res> {
  __$$ClearExpensesImplCopyWithImpl(
      _$ClearExpensesImpl _value, $Res Function(_$ClearExpensesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearExpensesImpl implements ClearExpenses {
  const _$ClearExpensesImpl();

  @override
  String toString() {
    return 'ExpenseEvent.clearExpenses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearExpensesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return clearExpenses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return clearExpenses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (clearExpenses != null) {
      return clearExpenses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return clearExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return clearExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (clearExpenses != null) {
      return clearExpenses(this);
    }
    return orElse();
  }
}

abstract class ClearExpenses implements ExpenseEvent {
  const factory ClearExpenses() = _$ClearExpensesImpl;
}

/// @nodoc
abstract class _$$UpdateSelectedDateImplCopyWith<$Res> {
  factory _$$UpdateSelectedDateImplCopyWith(_$UpdateSelectedDateImpl value,
          $Res Function(_$UpdateSelectedDateImpl) then) =
      __$$UpdateSelectedDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime selectedDateTime});
}

/// @nodoc
class __$$UpdateSelectedDateImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$UpdateSelectedDateImpl>
    implements _$$UpdateSelectedDateImplCopyWith<$Res> {
  __$$UpdateSelectedDateImplCopyWithImpl(_$UpdateSelectedDateImpl _value,
      $Res Function(_$UpdateSelectedDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDateTime = null,
  }) {
    return _then(_$UpdateSelectedDateImpl(
      selectedDateTime: null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedDateImpl implements UpdateSelectedDate {
  const _$UpdateSelectedDateImpl({required this.selectedDateTime});

  @override
  final DateTime selectedDateTime;

  @override
  String toString() {
    return 'ExpenseEvent.updateSelectedDate(selectedDateTime: $selectedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedDateImpl &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedDateImplCopyWith<_$UpdateSelectedDateImpl> get copyWith =>
      __$$UpdateSelectedDateImplCopyWithImpl<_$UpdateSelectedDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return updateSelectedDate(selectedDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return updateSelectedDate?.call(selectedDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(selectedDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return updateSelectedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return updateSelectedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedDate != null) {
      return updateSelectedDate(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedDate implements ExpenseEvent {
  const factory UpdateSelectedDate({required final DateTime selectedDateTime}) =
      _$UpdateSelectedDateImpl;

  DateTime get selectedDateTime;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedDateImplCopyWith<_$UpdateSelectedDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentTypeEventImplCopyWith<$Res> {
  factory _$$UpdatePaymentTypeEventImplCopyWith(
          _$UpdatePaymentTypeEventImpl value,
          $Res Function(_$UpdatePaymentTypeEventImpl) then) =
      __$$UpdatePaymentTypeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentType paymentType});
}

/// @nodoc
class __$$UpdatePaymentTypeEventImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$UpdatePaymentTypeEventImpl>
    implements _$$UpdatePaymentTypeEventImplCopyWith<$Res> {
  __$$UpdatePaymentTypeEventImplCopyWithImpl(
      _$UpdatePaymentTypeEventImpl _value,
      $Res Function(_$UpdatePaymentTypeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentType = null,
  }) {
    return _then(_$UpdatePaymentTypeEventImpl(
      null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
    ));
  }
}

/// @nodoc

class _$UpdatePaymentTypeEventImpl implements UpdatePaymentTypeEvent {
  const _$UpdatePaymentTypeEventImpl(this.paymentType);

  @override
  final PaymentType paymentType;

  @override
  String toString() {
    return 'ExpenseEvent.updatePaymentType(paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentTypeEventImpl &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentType);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentTypeEventImplCopyWith<_$UpdatePaymentTypeEventImpl>
      get copyWith => __$$UpdatePaymentTypeEventImplCopyWithImpl<
          _$UpdatePaymentTypeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return updatePaymentType(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return updatePaymentType?.call(paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updatePaymentType != null) {
      return updatePaymentType(paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return updatePaymentType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return updatePaymentType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updatePaymentType != null) {
      return updatePaymentType(this);
    }
    return orElse();
  }
}

abstract class UpdatePaymentTypeEvent implements ExpenseEvent {
  const factory UpdatePaymentTypeEvent(final PaymentType paymentType) =
      _$UpdatePaymentTypeEventImpl;

  PaymentType get paymentType;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaymentTypeEventImplCopyWith<_$UpdatePaymentTypeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedIndexImplCopyWith<$Res> {
  factory _$$UpdateSelectedIndexImplCopyWith(_$UpdateSelectedIndexImpl value,
          $Res Function(_$UpdateSelectedIndexImpl) then) =
      __$$UpdateSelectedIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateSelectedIndexImplCopyWithImpl<$Res>
    extends _$ExpenseEventCopyWithImpl<$Res, _$UpdateSelectedIndexImpl>
    implements _$$UpdateSelectedIndexImplCopyWith<$Res> {
  __$$UpdateSelectedIndexImplCopyWithImpl(_$UpdateSelectedIndexImpl _value,
      $Res Function(_$UpdateSelectedIndexImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateSelectedIndexImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedIndexImpl implements UpdateSelectedIndex {
  const _$UpdateSelectedIndexImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ExpenseEvent.updateSelectedIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedIndexImplCopyWith<_$UpdateSelectedIndexImpl> get copyWith =>
      __$$UpdateSelectedIndexImplCopyWithImpl<_$UpdateSelectedIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExpenseModel expense) addExpense,
    required TResult Function(int expenseId) deleteExpense,
    required TResult Function(ExpenseModel expense) updateExpense,
    required TResult Function() fetchExpenses,
    required TResult Function() clearExpenses,
    required TResult Function(DateTime selectedDateTime) updateSelectedDate,
    required TResult Function(PaymentType paymentType) updatePaymentType,
    required TResult Function(int index) updateSelectedIndex,
  }) {
    return updateSelectedIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExpenseModel expense)? addExpense,
    TResult? Function(int expenseId)? deleteExpense,
    TResult? Function(ExpenseModel expense)? updateExpense,
    TResult? Function()? fetchExpenses,
    TResult? Function()? clearExpenses,
    TResult? Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult? Function(PaymentType paymentType)? updatePaymentType,
    TResult? Function(int index)? updateSelectedIndex,
  }) {
    return updateSelectedIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExpenseModel expense)? addExpense,
    TResult Function(int expenseId)? deleteExpense,
    TResult Function(ExpenseModel expense)? updateExpense,
    TResult Function()? fetchExpenses,
    TResult Function()? clearExpenses,
    TResult Function(DateTime selectedDateTime)? updateSelectedDate,
    TResult Function(PaymentType paymentType)? updatePaymentType,
    TResult Function(int index)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedIndex != null) {
      return updateSelectedIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddExpense value) addExpense,
    required TResult Function(DeleteExpense value) deleteExpense,
    required TResult Function(UpdateExpense value) updateExpense,
    required TResult Function(FetchExpenses value) fetchExpenses,
    required TResult Function(ClearExpenses value) clearExpenses,
    required TResult Function(UpdateSelectedDate value) updateSelectedDate,
    required TResult Function(UpdatePaymentTypeEvent value) updatePaymentType,
    required TResult Function(UpdateSelectedIndex value) updateSelectedIndex,
  }) {
    return updateSelectedIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddExpense value)? addExpense,
    TResult? Function(DeleteExpense value)? deleteExpense,
    TResult? Function(UpdateExpense value)? updateExpense,
    TResult? Function(FetchExpenses value)? fetchExpenses,
    TResult? Function(ClearExpenses value)? clearExpenses,
    TResult? Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult? Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult? Function(UpdateSelectedIndex value)? updateSelectedIndex,
  }) {
    return updateSelectedIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddExpense value)? addExpense,
    TResult Function(DeleteExpense value)? deleteExpense,
    TResult Function(UpdateExpense value)? updateExpense,
    TResult Function(FetchExpenses value)? fetchExpenses,
    TResult Function(ClearExpenses value)? clearExpenses,
    TResult Function(UpdateSelectedDate value)? updateSelectedDate,
    TResult Function(UpdatePaymentTypeEvent value)? updatePaymentType,
    TResult Function(UpdateSelectedIndex value)? updateSelectedIndex,
    required TResult orElse(),
  }) {
    if (updateSelectedIndex != null) {
      return updateSelectedIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateSelectedIndex implements ExpenseEvent {
  const factory UpdateSelectedIndex(final int index) =
      _$UpdateSelectedIndexImpl;

  int get index;

  /// Create a copy of ExpenseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSelectedIndexImplCopyWith<_$UpdateSelectedIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExpenseState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ExpenseModel> get expenses => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  DateTime get selectedDateTime => throw _privateConstructorUsedError;
  PaymentType get selectedPaymentType => throw _privateConstructorUsedError;
  int get selectedButtonIndex => throw _privateConstructorUsedError;
  double get cashTotal => throw _privateConstructorUsedError;
  double get bankTotal => throw _privateConstructorUsedError;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseStateCopyWith<ExpenseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseStateCopyWith<$Res> {
  factory $ExpenseStateCopyWith(
          ExpenseState value, $Res Function(ExpenseState) then) =
      _$ExpenseStateCopyWithImpl<$Res, ExpenseState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<ExpenseModel> expenses,
      String? errorMessage,
      DateTime selectedDateTime,
      PaymentType selectedPaymentType,
      int selectedButtonIndex,
      double cashTotal,
      double bankTotal});
}

/// @nodoc
class _$ExpenseStateCopyWithImpl<$Res, $Val extends ExpenseState>
    implements $ExpenseStateCopyWith<$Res> {
  _$ExpenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? expenses = null,
    Object? errorMessage = freezed,
    Object? selectedDateTime = null,
    Object? selectedPaymentType = null,
    Object? selectedButtonIndex = null,
    Object? cashTotal = null,
    Object? bankTotal = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDateTime: null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPaymentType: null == selectedPaymentType
          ? _value.selectedPaymentType
          : selectedPaymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      selectedButtonIndex: null == selectedButtonIndex
          ? _value.selectedButtonIndex
          : selectedButtonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cashTotal: null == cashTotal
          ? _value.cashTotal
          : cashTotal // ignore: cast_nullable_to_non_nullable
              as double,
      bankTotal: null == bankTotal
          ? _value.bankTotal
          : bankTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseStateImplCopyWith<$Res>
    implements $ExpenseStateCopyWith<$Res> {
  factory _$$ExpenseStateImplCopyWith(
          _$ExpenseStateImpl value, $Res Function(_$ExpenseStateImpl) then) =
      __$$ExpenseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<ExpenseModel> expenses,
      String? errorMessage,
      DateTime selectedDateTime,
      PaymentType selectedPaymentType,
      int selectedButtonIndex,
      double cashTotal,
      double bankTotal});
}

/// @nodoc
class __$$ExpenseStateImplCopyWithImpl<$Res>
    extends _$ExpenseStateCopyWithImpl<$Res, _$ExpenseStateImpl>
    implements _$$ExpenseStateImplCopyWith<$Res> {
  __$$ExpenseStateImplCopyWithImpl(
      _$ExpenseStateImpl _value, $Res Function(_$ExpenseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? expenses = null,
    Object? errorMessage = freezed,
    Object? selectedDateTime = null,
    Object? selectedPaymentType = null,
    Object? selectedButtonIndex = null,
    Object? cashTotal = null,
    Object? bankTotal = null,
  }) {
    return _then(_$ExpenseStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      expenses: null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<ExpenseModel>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedDateTime: null == selectedDateTime
          ? _value.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedPaymentType: null == selectedPaymentType
          ? _value.selectedPaymentType
          : selectedPaymentType // ignore: cast_nullable_to_non_nullable
              as PaymentType,
      selectedButtonIndex: null == selectedButtonIndex
          ? _value.selectedButtonIndex
          : selectedButtonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cashTotal: null == cashTotal
          ? _value.cashTotal
          : cashTotal // ignore: cast_nullable_to_non_nullable
              as double,
      bankTotal: null == bankTotal
          ? _value.bankTotal
          : bankTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ExpenseStateImpl implements _ExpenseState {
  const _$ExpenseStateImpl(
      {this.isLoading = false,
      final List<ExpenseModel> expenses = const [],
      this.errorMessage,
      required this.selectedDateTime,
      required this.selectedPaymentType,
      required this.selectedButtonIndex,
      this.cashTotal = 0,
      this.bankTotal = 0})
      : _expenses = expenses;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ExpenseModel> _expenses;
  @override
  @JsonKey()
  List<ExpenseModel> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  final String? errorMessage;
  @override
  final DateTime selectedDateTime;
  @override
  final PaymentType selectedPaymentType;
  @override
  final int selectedButtonIndex;
  @override
  @JsonKey()
  final double cashTotal;
  @override
  @JsonKey()
  final double bankTotal;

  @override
  String toString() {
    return 'ExpenseState(isLoading: $isLoading, expenses: $expenses, errorMessage: $errorMessage, selectedDateTime: $selectedDateTime, selectedPaymentType: $selectedPaymentType, selectedButtonIndex: $selectedButtonIndex, cashTotal: $cashTotal, bankTotal: $bankTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime) &&
            (identical(other.selectedPaymentType, selectedPaymentType) ||
                other.selectedPaymentType == selectedPaymentType) &&
            (identical(other.selectedButtonIndex, selectedButtonIndex) ||
                other.selectedButtonIndex == selectedButtonIndex) &&
            (identical(other.cashTotal, cashTotal) ||
                other.cashTotal == cashTotal) &&
            (identical(other.bankTotal, bankTotal) ||
                other.bankTotal == bankTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_expenses),
      errorMessage,
      selectedDateTime,
      selectedPaymentType,
      selectedButtonIndex,
      cashTotal,
      bankTotal);

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      __$$ExpenseStateImplCopyWithImpl<_$ExpenseStateImpl>(this, _$identity);
}

abstract class _ExpenseState implements ExpenseState {
  const factory _ExpenseState(
      {final bool isLoading,
      final List<ExpenseModel> expenses,
      final String? errorMessage,
      required final DateTime selectedDateTime,
      required final PaymentType selectedPaymentType,
      required final int selectedButtonIndex,
      final double cashTotal,
      final double bankTotal}) = _$ExpenseStateImpl;

  @override
  bool get isLoading;
  @override
  List<ExpenseModel> get expenses;
  @override
  String? get errorMessage;
  @override
  DateTime get selectedDateTime;
  @override
  PaymentType get selectedPaymentType;
  @override
  int get selectedButtonIndex;
  @override
  double get cashTotal;
  @override
  double get bankTotal;

  /// Create a copy of ExpenseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseStateImplCopyWith<_$ExpenseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
