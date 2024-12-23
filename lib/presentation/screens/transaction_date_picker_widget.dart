import 'package:expense_mate/core/extension/time_extension.dart';
import 'package:expense_mate/core/utilities/getters/get_texttheme.dart';
import 'package:expense_mate/presentation/bloc/expense_bloc.dart';
import 'package:expense_mate/presentation/widgets/expense_mate_date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class ExpenseDatePickerWidget extends StatefulWidget {
  const ExpenseDatePickerWidget({
    super.key,
  });

  @override
  State<ExpenseDatePickerWidget> createState() =>
      _ExpenseDatePickerWidgetState();
}

class _ExpenseDatePickerWidgetState extends State<ExpenseDatePickerWidget> {
  late DateTime selectedDateTime = context.read<ExpenseBloc>().selectedDate;

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
                    selectedDateTime: selectedDateTime,
                  );
                  if (dateTime != null) {
                    setState(() {
                      selectedDateTime = selectedDateTime.copyWith(
                        day: dateTime.day,
                        month: dateTime.month,
                        year: dateTime.year,
                      );
                      context.read<ExpenseBloc>().selectedDate =
                          selectedDateTime;
                    });
                  }
                },
                leading: const Icon(
                  Icons.today_rounded,
                  // color: context.secondary,
                ),
                title: Text(
                  selectedDateTime.formattedDate,
                  style: getTextTheme(context).bodyMedium,
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
                    setState(() {
                      selectedDateTime = selectedDateTime.copyWith(
                        hour: timeOfDay.hour,
                        minute: timeOfDay.minute,
                      );
                      context.read<ExpenseBloc>().selectedDate =
                          selectedDateTime;
                    });
                  }
                },
                leading: Icon(
                  MdiIcons.clockOutline,
                  // color: context.secondary,
                ),
                title: Text(
                  selectedDateTime.formattedTime,
                  style: getTextTheme(context).bodyMedium,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
