// To parse this JSON data, do
//
//     final dictionary = dictionaryFromJson(jsonString);

import 'dart:convert';

List<Dictionary> dictionaryFromJson(String str) => List<Dictionary>.from(json.decode(str).map((x) => Dictionary.fromJson(x)));

String dictionaryToJson(List<Dictionary> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Dictionary {
    Dictionary({
        this.word,
        this.phonetics,
        this.meanings,
    });

    String word;
    List<Phonetic> phonetics;
    List<Meaning> meanings;

    factory Dictionary.fromJson(Map<String, dynamic> json) => Dictionary(
        word: json["word"],
        phonetics: List<Phonetic>.from(json["phonetics"].map((x) => Phonetic.fromJson(x))),
        meanings: List<Meaning>.from(json["meanings"].map((x) => Meaning.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "word": word,
        "phonetics": List<dynamic>.from(phonetics.map((x) => x.toJson())),
        "meanings": List<dynamic>.from(meanings.map((x) => x.toJson())),
    };
}

class Meaning {
    Meaning({
        this.partOfSpeech,
        this.definitions,
    });

    String partOfSpeech;
    List<Definition> definitions;

    factory Meaning.fromJson(Map<String, dynamic> json) => Meaning(
        partOfSpeech: json["partOfSpeech"],
        definitions: List<Definition>.from(json["definitions"].map((x) => Definition.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "partOfSpeech": partOfSpeech,
        "definitions": List<dynamic>.from(definitions.map((x) => x.toJson())),
    };
}

class Definition {
    Definition({
        this.definition,
        this.synonyms,
        this.example,
    });

    String definition;
    List<String> synonyms;
    String example;

    factory Definition.fromJson(Map<String, dynamic> json) => Definition(
        definition: json["definition"],
        synonyms: json["synonyms"] == null ? null : List<String>.from(json["synonyms"].map((x) => x)),
        example: json["example"],
    );

    Map<String, dynamic> toJson() => {
        "definition": definition,
        "synonyms": synonyms == null ? null : List<dynamic>.from(synonyms.map((x) => x)),
        "example": example,
    };
}

class Phonetic {
    Phonetic({
        this.text,
        this.audio,
    });

    String text;
    String audio;

    factory Phonetic.fromJson(Map<String, dynamic> json) => Phonetic(
        text: json["text"],
        audio: json["audio"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "audio": audio,
    };
}
