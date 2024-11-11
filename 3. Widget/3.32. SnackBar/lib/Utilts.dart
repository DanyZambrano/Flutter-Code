import 'package:flutter/material.dart';

enum SNPosition {
  top,
  bottom,
}

enum SNtype { info, success, error }

class Utils {
  void showSnackBar(BuildContext context, String title, String message, SNPosition position, SNtype type) {
    var snicon = Icons.abc;
    var snbckcolor = Colors.white;

    var diss = (position == SNPosition.top)
        ? DismissDirection.up
        : DismissDirection.down;

    var marg = (position == SNPosition.top)
        ? EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height - 200,
            left: 10,
            right: 10)
        : EdgeInsets.zero;

    switch (type) {
      case SNtype.info:
        snicon = Icons.info;
        snbckcolor = Colors.blue;
        break;
      case SNtype.success:
        snicon = Icons.check;
        snbckcolor = Colors.green;
        break;
      case SNtype.error:
        snicon = Icons.clear_outlined;
        snbckcolor = Colors.red;
        break;
      default:
    }

    final snackBar = SnackBar(
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      margin: marg,
      dismissDirection: diss,
      content: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 70,
            decoration: BoxDecoration(
              color: snbckcolor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: Row(
              children: [
                const SizedBox(width: 55),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: const TextStyle(fontSize: 18, color: Colors.white)),
                        Text(message, style: const TextStyle(fontSize: 14, color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
              bottom: 20,
              left: 20,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: Icon(
                      snicon,
                      color:snbckcolor,
                      size: 20,
                    )
                  )
                ],
              )
          ),

        ]
      )

    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
