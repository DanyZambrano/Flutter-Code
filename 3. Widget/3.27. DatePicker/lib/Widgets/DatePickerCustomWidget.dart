import 'package:flutter/material.dart';

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
      child: const Text('Selecione una Fecha'),
    );
  }

  Future selectDate(BuildContext context) async => showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
        helpText: 'Selecciona tu Cumpleaños',
        cancelText: 'Cerrar',
        confirmText: 'Confirmar',
        fieldHintText: 'Mes/Dia/Año',
        fieldLabelText: 'Fecha de Cumpleaños',
        errorInvalidText: 'Indroduzca una fecha valida!',
        errorFormatText: 'El formato no es el correcto!',
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
