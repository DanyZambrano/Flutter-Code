import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CardBaseWidget extends StatefulWidget {
  const CardBaseWidget({super.key});

  @override
  State<CardBaseWidget> createState() => _CardBaseWidgetState();
}

class _CardBaseWidgetState extends State<CardBaseWidget> {
  String appName = "";
  String version = "";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    getVersionInfo();

    return SizedBox(
      width: 400,
      height: 400,
      child: Card(
        color: Colors.blue,
        elevation: 20,
        margin: const EdgeInsets.all(16.0),
        shadowColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
          side: const BorderSide(color: Colors.black, width: 1),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text("About",
              style: TextStyle(color: Colors.white, fontSize: 40)),
          Text("App Name: $appName",
              style: const TextStyle(color: Colors.white, fontSize: 20)),
          Text("Version: $version",
              style: const TextStyle(color: Colors.white, fontSize: 20)),
        ]),
      ),
    );
  }

  void getVersionInfo() {
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        appName = packageInfo.appName;
      version = "${packageInfo.version} (${packageInfo.buildNumber})";
      });
    });
  }


}
