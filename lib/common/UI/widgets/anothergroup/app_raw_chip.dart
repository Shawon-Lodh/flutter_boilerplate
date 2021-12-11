// import 'package:flutter/material.dart';
// import 'index.dart';
//
// class AppRawChip extends StatelessWidget {
//   final String? label;
//   final IconData? iconData;
//   final SizeType? sizeType;
//   final Color? color;
//   final Color? backgroundColor;
//   final double? radius;
//
//   const AppRawChip(
//       {Key? key,
//       required this.label,
//       required this.iconData,
//       this.sizeType = SizeType.xxSmall,
//       this.color = Colors.black,
//       this.backgroundColor,
//       this.radius = 8.0})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(radius!)),
//           color: backgroundColor ?? Colors.red[50]),
//       padding: EdgeInsets.symmetric(
//           horizontal: convertSize(8), vertical: convertSize(5)),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             iconData,
//             color: color,
//             size: getIconSize(
//               sizeType,
//             ),
//           ),
//           SizedBox(
//             width: convertSize(3),
//           ),
//           Text(
//             label!,
//             style: TextStyle(fontSize: getFontSize(sizeType), color: color),
//           )
//         ],
//       ),
//     );
//   }
// }
