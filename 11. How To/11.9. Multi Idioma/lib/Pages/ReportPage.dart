import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';
import 'package:flutter_widgets/Widgets/DatePickerCustomWidget.dart';
import 'package:flutter_widgets/generated/l10n.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBarWidget(title: S.of(context).INTL_REPORTES),
      body: const Center(
        child: DatePickerCustomWidget()
      ),
    );
  }
}
