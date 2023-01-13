import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
part 'quran_sura_model.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class QuranSura {
  @HiveField(0)
  String? query;

  @HiveField(1)
  int? totalResults;

  @HiveField(2)
  int? currentPage;

  @HiveField(3)
  int? totalPages;

  @HiveField(4)
  List<Results>? results;

  QuranSura({
    this.query,
    this.totalResults,
    this.currentPage,
    this.totalPages,
    this.results,
  });

  factory QuranSura.fromJson(Map<String, dynamic> json) =>
      _$QuranSuraFromJson(json);
  Map<String, dynamic> toJson() => _$QuranSuraToJson(this);
}

@JsonSerializable()
@HiveType(typeId: 2)
class Results {
  @HiveField(0)
  String? verseKey;

  @HiveField(1)
  int? verseId;

  @HiveField(2)
  String? text;

  @HiveField(3)
  dynamic highlighted;

  @HiveField(4)
  List<Words>? words;

  List<Translations>? translations;

  Results({
    this.verseKey,
    this.verseId,
    this.text,
    this.highlighted,
    this.words,
    this.translations,
  });

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}

@HiveType(typeId: 3)
@JsonSerializable()
class Words {
  String? charType;
  String? text;

  Words({
    this.charType,
    this.text,
  });

  factory Words.fromJson(Map<String, dynamic> json) => _$WordsFromJson(json);
  Map<String, dynamic> toJson() => _$WordsToJson(this);
}

@HiveType(typeId: 4)
@JsonSerializable()
class Translations {
  String? text;
  int? resourceId;
  String? name;
  String? languageName;

  Translations({
    this.text,
    this.resourceId,
    this.name,
    this.languageName,
  });
  factory Translations.fromJson(Map<String, dynamic> json) =>
      _$TranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationsToJson(this);
}
