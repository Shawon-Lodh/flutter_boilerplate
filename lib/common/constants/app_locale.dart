import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/core/localization/models/language_model.dart';


const Locale EN_LOCALE = Locale('en', 'US');
const Locale KH_LOCALE = Locale('km', 'KH');

const List<LanguageModel> APP_LOCALES = [
  LanguageModel(
    locale: EN_LOCALE,
    name: "English",
    image: "https://ecolebranchee.com/wp-content/uploads/2015/04/etats-unis-drapeau.gif",
  ),
  LanguageModel(
    locale: KH_LOCALE,
    name: "ខ្មែរ",
    image: "https://wonderfulengineering.com/wp-content/uploads/2015/08/Cambodia-flag-3.gif",
  ),
];