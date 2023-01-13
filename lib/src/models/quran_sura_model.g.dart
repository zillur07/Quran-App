// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_sura_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuranSuraAdapter extends TypeAdapter<QuranSura> {
  @override
  final int typeId = 1;

  @override
  QuranSura read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuranSura(
      query: fields[0] as String?,
      totalResults: fields[1] as int?,
      currentPage: fields[2] as int?,
      totalPages: fields[3] as int?,
      results: (fields[4] as List?)?.cast<Results>(),
    );
  }

  @override
  void write(BinaryWriter writer, QuranSura obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.query)
      ..writeByte(1)
      ..write(obj.totalResults)
      ..writeByte(2)
      ..write(obj.currentPage)
      ..writeByte(3)
      ..write(obj.totalPages)
      ..writeByte(4)
      ..write(obj.results);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuranSuraAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ResultsAdapter extends TypeAdapter<Results> {
  @override
  final int typeId = 2;

  @override
  Results read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Results(
      verseKey: fields[0] as String?,
      verseId: fields[1] as int?,
      text: fields[2] as String?,
      highlighted: fields[3] as dynamic,
      words: (fields[4] as List?)?.cast<Words>(),
    );
  }

  @override
  void write(BinaryWriter writer, Results obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.verseKey)
      ..writeByte(1)
      ..write(obj.verseId)
      ..writeByte(2)
      ..write(obj.text)
      ..writeByte(3)
      ..write(obj.highlighted)
      ..writeByte(4)
      ..write(obj.words);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WordsAdapter extends TypeAdapter<Words> {
  @override
  final int typeId = 3;

  @override
  Words read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Words();
  }

  @override
  void write(BinaryWriter writer, Words obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TranslationsAdapter extends TypeAdapter<Translations> {
  @override
  final int typeId = 4;

  @override
  Translations read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Translations();
  }

  @override
  void write(BinaryWriter writer, Translations obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuranSura _$QuranSuraFromJson(Map<String, dynamic> json) => QuranSura(
      query: json['query'] as String?,
      totalResults: json['totalResults'] as int?,
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuranSuraToJson(QuranSura instance) => <String, dynamic>{
      'query': instance.query,
      'totalResults': instance.totalResults,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'results': instance.results,
    };

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      verseKey: json['verseKey'] as String?,
      verseId: json['verseId'] as int?,
      text: json['text'] as String?,
      highlighted: json['highlighted'],
      words: (json['words'] as List<dynamic>?)
          ?.map((e) => Words.fromJson(e as Map<String, dynamic>))
          .toList(),
      translations: (json['translations'] as List<dynamic>?)
          ?.map((e) => Translations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'verseKey': instance.verseKey,
      'verseId': instance.verseId,
      'text': instance.text,
      'highlighted': instance.highlighted,
      'words': instance.words,
      'translations': instance.translations,
    };

Words _$WordsFromJson(Map<String, dynamic> json) => Words(
      charType: json['charType'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$WordsToJson(Words instance) => <String, dynamic>{
      'charType': instance.charType,
      'text': instance.text,
    };

Translations _$TranslationsFromJson(Map<String, dynamic> json) => Translations(
      text: json['text'] as String?,
      resourceId: json['resourceId'] as int?,
      name: json['name'] as String?,
      languageName: json['languageName'] as String?,
    );

Map<String, dynamic> _$TranslationsToJson(Translations instance) =>
    <String, dynamic>{
      'text': instance.text,
      'resourceId': instance.resourceId,
      'name': instance.name,
      'languageName': instance.languageName,
    };
