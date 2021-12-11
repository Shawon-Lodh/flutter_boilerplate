// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'index.dart';
//
// class AppRichText extends StatelessWidget {
//   final String? text;
//   final int? maxLines;
//   final SizeType? fontSize;
//   final FontWeight? fontWeight;
//   final TextAlign? align;
//   final Color? color;
//
//   const AppRichText(
//       {Key? key,
//       @required this.text,
//       // this.maxLines = AppConsts.int_infinity,
//       this.fontSize = SizeType.xxSmall,
//       this.color = Colors.black,
//       this.align = TextAlign.start,
//       this.fontWeight, this.maxLines})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//       textAlign: align!,
//       maxLines: maxLines,
//       softWrap: true,
//       overflow: TextOverflow.ellipsis,
//       text: TextSpan(
//         text: text,
//         style: GoogleFonts.lora(
//             fontWeight: fontWeight,
//             fontSize: getFontSize(fontSize),
//             color: color),
//       ),
//     );
//   }
// }
