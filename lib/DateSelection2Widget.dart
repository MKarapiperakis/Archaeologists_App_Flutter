// ignore_for_file: prefer_initializing_formals, prefer_const_constructors

import 'package:application/SearchWidget.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class DateSelection2 extends StatefulWidget {
  late final String? restorationId = "";
  @override
  State<StatefulWidget> createState() {
    return DateSelectionState2();
  }
}

DateTime now = DateTime.now();

class DateSelectionState2 extends State<DateSelection2> with RestorationMixin {
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(now.year, now.month, now.day));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2010),
          lastDate: DateTime(now.year + 5),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;

        String date =
            '${_selectedDate.value.year}-${_selectedDate.value.month}-${_selectedDate.value.day}';
        print(date);
        arr2_2[29] = date;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        _restorableDatePickerRouteFuture.present();
      },
      child: Text('Ενημέρωση ημερομηνίας'),
    );
  }
}
