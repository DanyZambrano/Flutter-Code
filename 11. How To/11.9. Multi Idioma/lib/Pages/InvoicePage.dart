import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';
import 'package:flutter_widgets/generated/l10n.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBarWidget(title: S.of(context).INTL_FACTURAS),
      body: SafeArea(
        child: Center(
          child: Text(S.of(context).INTL_FACTURAS)
        )
      ),
    );
  }
}
