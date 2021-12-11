import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/UI/state_widgets/loading_widget.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart' as styled_toast;


const emptySizedBox = SizedBox();

class UIHelper {

  static Future<T?> showCustomDialog<T>(BuildContext context, Widget dialog) async {
    return await showDialog(
      context: context,
      builder: (context) => dialog,
    );
  }

  static Future showToast(BuildContext context, dynamic message) async {
    styled_toast.showToastWidget(
      Container(
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        margin: const EdgeInsets.only(bottom: 64),
        child: Text(message.toString(), style: const TextStyle(color: Colors.white)),
      ),
      context: context,
      animDuration: Duration.zero,
      dismissOtherToast: true,
    );
  }

  static Future showTopSnackBar(BuildContext context, dynamic message) async {
    styled_toast.showToastWidget(
      Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        margin: const EdgeInsets.only(top: 64, left: 8, right: 8),
        child: Text(
          message.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
        width: double.infinity,
      ),
      context: context,
      animDuration: const Duration(milliseconds: 200),
      duration: const Duration(seconds: 3),
      position: styled_toast.StyledToastPosition.top,
      animationBuilder: (context, controller, duration, child) {
        return FadeTransition(opacity: controller, child: child);
      },
      dismissOtherToast: true,
    );
  }

  static void showSnackBar(BuildContext context, dynamic message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message.toString()),
        margin: const EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.red,
      ),
    );
  }

  static AppBar CustomAppBar({
    required String title,
    double elevation = 2.0,
    List<Widget>? actions,
    bool centerTitle = false,
    Color? backgroundColor,
  }) {
    return AppBar(
      title: Text(title),
      elevation: elevation,
      actions: actions,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
    );
  }

  showProgressDialog(BuildContext context) {
    showDialog<dynamic>(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return const LoadingWidget();
        });
  }

  showMessageDialog(BuildContext context, String message,
      {String title = "Sample",
        String positiveText = 'Okay',
        bool cancelable = true,
        VoidCallback? onPressed}) {
    onPressed ??= () {
      Navigator.pop(context);
    };
    showDialog<dynamic>(
        context: context,
        barrierDismissible: cancelable,
        builder: (context) =>
            AlertDialog(
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Text(message),
              actions: <Widget>[
                FlatButton(
                  child: Text(
                    positiveText,
                    style: TextStyle(
                        color: Theme
                            .of(context)
                            .accentColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: onPressed,
                )
              ],
            ));
  }

  showConfirmDialog(BuildContext context, String message,
      VoidCallback onPressed,
      {String title = "Sample",
        String negativeText = 'No',
        String positiveText = 'Yes',
        bool cancelable = true}) {
    showDialog<dynamic>(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  negativeText,
                  style: TextStyle(
                      color: Colors.red, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text(
                  positiveText,
                  style: TextStyle(
                      color: Theme
                          .of(context)
                          .accentColor,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: onPressed,
              ),
            ],
          ),
    );
  }
}
