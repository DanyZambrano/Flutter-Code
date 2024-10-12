import 'package:flutter/material.dart';
import 'package:flutter_widgets/Widgets/AppBarWidget.dart';
import 'package:flutter_widgets/Menu/DrawerMenu.dart';
import 'package:flutter_widgets/generated/l10n.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBarWidget(title: S.of(context).INTL_CONFIGURACION),
      body: Center(
        child: Text(S.of(context).INTL_CONFIGURACION)
      ),
    );
  }
}
