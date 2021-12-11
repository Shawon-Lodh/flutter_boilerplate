// import 'package:flutter/material.dart';
// import 'index.dart';
//
// enum SizeType {
//   Tiny,
//   xxSmall,
//   xSmall,
//   Middle,
//   Small,
//   Large,
//   xLarge,
//   xxLarge,
//   Ultra,
//   Mega
// }
//
// /// [AppGTText] translated the [text] string from the google, and show it a [AppRichText] component.
// class AppGTText extends StatelessWidget {
//   /// the string value which gonna be translated from google!
//   final String? text;
//   final TextAlign? align;
//   final FontWeight? fontWeight;
//   final Color? color;
//   final int? maxLines;
//   final SizeType? sizeType;
//
//   const AppGTText(
//       {Key? key,
//       this.text,
//       this.align = TextAlign.start,
//       this.color = Colors.black,
//       this.sizeType = SizeType.Middle,
//       // this.maxLines = AppConsts.int_infinity,
//       this.fontWeight, this.maxLines})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<String>(
//         future: tg(text!),
//         initialData: text,
//         builder: (_, snapshot) {
//           return AppRichText(
//             text: snapshot.data.toString(),
//             maxLines: maxLines!,
//             align: align!,
//             color: color!,
//             fontSize: sizeType!,
//             fontWeight: fontWeight!,
//           );
//         });
//   }
// }
