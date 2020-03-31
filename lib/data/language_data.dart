import 'package:doglife/models/language_model.dart';

List<LanguageModel> getLanguage() {
  List<LanguageModel> languages = new List<LanguageModel>();
  LanguageModel languageModel = new LanguageModel();

//1
  languageModel.countryName = "India";
  languageModel.flagImgPath = "assets/flags/china.png";
  languages.add(languageModel);

  languageModel = new LanguageModel();
  //2
  languageModel.countryName = "Some Else";
  languageModel.flagImgPath = "assets/flags/china.png";
  languages.add(languageModel);

  languageModel = new LanguageModel();
  //3
  languageModel.countryName = "Other";
  languageModel.flagImgPath = "assets/flags/china.png";
  languages.add(languageModel);

  // will add more later

  languageModel = new LanguageModel();

  return languages;
}
