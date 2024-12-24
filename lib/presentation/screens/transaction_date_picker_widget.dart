import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/presentation/bloc/expense_bloc.dart';
import 'package:expense_mate/presentation/widgets/expense_mate_date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExpenseDatePickerWidget extends StatelessWidget {
  const ExpenseDatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onTap: () async {
                  final DateTime? dateTime = await expenseMateDatePicker(
                    context,
                    selectedDateTime:
                        context.read<ExpenseBloc>().state.selectedDateTime,
                  );
                  if (dateTime != null) {
                    context.read<ExpenseBloc>().add(
                        ExpenseEvent.updateSelectedDate(
                            selectedDateTime: dateTime));
                  }
                },
                leading: const Icon(
                  Icons.today_rounded,
                ),
                title: Text(
                  context
                      .watch<ExpenseBloc>()
                      .state
                      .selectedDateTime
                      .formattedDate,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onTap: () async {
                  final TimeOfDay? timeOfDay =
                      await expenseMateTimerPicker(context);
                  if (timeOfDay != null) {
                    final newDateTime = DateTime(
                      context.read<ExpenseBloc>().state.selectedDateTime.year,
                      context.read<ExpenseBloc>().state.selectedDateTime.month,
                      context.read<ExpenseBloc>().state.selectedDateTime.day,
                      timeOfDay.hour,
                      timeOfDay.minute,
                    );
                    context.read<ExpenseBloc>().add(
                        ExpenseEvent.updateSelectedDate(
                            selectedDateTime: newDateTime));
                  }
                },
                leading: Icon(
                  MdiIcons.clockOutline,
                ),
                title: Text(
                  context
                      .watch<ExpenseBloc>()
                      .state
                      .selectedDateTime
                      .formattedTime,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
