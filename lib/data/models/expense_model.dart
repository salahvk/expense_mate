import 'package:equatable/equatable.dart';
import 'package:expense_mate/core/enum/payment_type.dart';

// Entity for domain layer
class ExpenseModel extends Equatable {
  final int? id;
  final String name;
  final double amount;
  final DateTime date;
  final PaymentType? paymentType;

  const ExpenseModel({
    this.id,
    required this.name,
    required this.amount,
    required this.date,
    required this.paymentType
  });

  // Convert model to Map (for database insertion)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'amount': amount,
      'date': date.toIso8601String(),
      'paymentType': paymentType?.index
    };
  }

  // Create model from Map (for database retrieval)
  factory ExpenseModel.fromMap(Map<String, dynamic> map) {
    return ExpenseModel(
      id: map['id'],
      name: map['name'],
      amount: map['amount'],
      date: DateTime.parse(map['date']),
      paymentType: PaymentType.values[map['paymentType']] 
    );
  }

  @override
  List<Object?> get props => [id, name, amount, date,paymentType];
}
