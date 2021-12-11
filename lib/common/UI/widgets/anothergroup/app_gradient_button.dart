// import 'package:flutter/material.dart';
// import 'index.dart';
//
// class AppGradientButton extends StatelessWidget {
//   final Gradient? gradient;
//   final void Function()? onTap;
//   final String? buttonText;
//   final double? radius;
//
//   const AppGradientButton(
//       {Key? key, this.gradient, this.onTap, this.buttonText, this.radius = 8})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Material(
//         elevation: 5.0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(convertSize(10))),
//         child: Container(
//           padding: EdgeInsets.symmetric(vertical: convertSize(10.0)),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(radius!),
//             gradient: _gradient,
//           ),
//           child: Center(
//             child: Text(
//               buttonText!,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: getFontSize(SizeType.Middle),
//                   fontWeight: FontWeight.w600),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Gradient? get _gradient {
//     if (this.gradient != null) return gradient;
//     return LinearGradient(
//       begin: Alignment.centerLeft,
//       end: Alignment.centerRight,
//       colors: <Color>[
//         Colors.red.withOpacity(0.3),
//         Colors.red.withOpacity(0.8),
//         Colors.red.withOpacity(0.6),
//       ],
//     );
//   }
// }
