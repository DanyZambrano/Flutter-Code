import 'package:flutter/material.dart';
import 'package:flutter_widgets/generated/l10n.dart';

class DatePickerCustomWidget extends StatefulWidget {
  const DatePickerCustomWidget({super.key});

  @override
  State<DatePickerCustomWidget> createState() => DatePickerCustomWidgetState();
}

class DatePickerCustomWidgetState extends State<DatePickerCustomWidget> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => selectDate(context),
      child: Text(S.of(context).INTL_DTBUTTON),
    );
  }

  Future selectDate(BuildContext context) async => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: S.of(context).INTL_DTHELP,
        cancelText: S.of(context).INTL_DTCANCEL,
        confirmText: S.of(context).INTL_DTCONFIRM,
        fieldHintText: S.of(context).INTL_DTHINT,
        fieldLabelText: S.of(context).INTL_DTLABEL,
        errorInvalidText: S.of(context).INTL_DTERROR,
        errorFormatText: S.of(context).INTL_DTEFORMAT,
        builder: (BuildContext context, Widget? widget) => Theme(
          data: ThemeData(
            colorScheme: const ColorScheme.light(primary: Colors.orangeAccent),
            datePickerTheme: const DatePickerThemeData(
              backgroundColor: Colors.white,
              dividerColor: Colors.orangeAccent,
              headerBackgroundColor: Colors.orangeAccent,
              headerForegroundColor: Colors.white,
            ),
          ),
          child: widget!,
        ),
      ).then((DateTime? selected) {
        if (selected != null && selected != selectedDate) {
          setState(() => selectedDate = selected);
          debugPrint(selectedDate.toString());
        }
      });
}
