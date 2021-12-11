//
// import 'package:flutter/material.dart';
// import 'package:flutter_boilerplate/common/UI/widgets/dialogs/widget/x_alert_dialog.dart';
//
// class XAlert {
//   // static get context => XCoordinator.context;
//
//   /// show the dialog
//   static Future<String?> show({
//     String? title,
//     String? body,
//     List<XAlertButton> actions = const [],
//   }) async {
//     // return showDialog<String>(
//     //   context: context,
//     //   builder: (context) {
//     //     return XAlertDialog(
//     //       title: title,
//     //       content: body,
//     //       actions: actions,
//     //     );
//       },
//     );
//   }
//
//   /// Shows a confirmation dialog
//   Future showCustomAlert({
//     Widget? title,
//     Widget? body,
//     List<XAlertButton> actions = const [],
//   }) async {
//     return showDialog<String>(
//       context: context,
//       builder: (context) {
//         return XAlertDialog(
//           titleWidget: title,
//           contentWidget: body,
//           actions: actions,
//         );
//       },
//     );
//   }
// }
