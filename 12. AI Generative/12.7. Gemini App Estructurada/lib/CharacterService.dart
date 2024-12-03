import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class CharacterService {
  final String apiKey;

  late final GenerativeModel model;

  final generationConfig = GenerationConfig(
    temperature: 0.4,
    topK: 32,
    topP: 1,
    maxOutputTokens: 4096,
  );

  final safetySettings = [
    SafetySetting(HarmCategory.harassment, HarmBlockThreshold.medium),
    SafetySetting(HarmCategory.hateSpeech, HarmBlockThreshold.medium),
    SafetySetting(HarmCategory.sexuallyExplicit, HarmBlockThreshold.medium),
    SafetySetting(HarmCategory.dangerousContent, HarmBlockThreshold.medium),
  ];

  CharacterService(this.apiKey) {
    model = GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  }

  Future<Character> generateCharacter(String description, String role,
      String personality, String background) async {
    final prompt = createPrompt(description, role, personality, background);

    int count = 0;

    while (count < 3) {
      try {
        final response = await model.generateContent(
          [prompt],
          safetySettings: safetySettings,
          generationConfig: generationConfig,
        );

        final json = jsonDecode(response.text!);
        final character = Character.fromJson(json);
        return character;
      } catch (ex) {
        debugPrint(ex.toString());
      }

      count++;
    }

    throw 'Could not parse response after three tries.';
  }
}

class Appearance {
  final String age;
  final String height;
  final String weight;
  final String build;
  final String hair;
  final String eyes;

  const Appearance({
    required this.age,
    required this.height,
    required this.weight,
    required this.build,
    required this.hair,
    required this.eyes,
  });

  Appearance.fromJson(Map<String, dynamic> json)
      : age = json['edad'] ?? '',
        height = json['altura'] ?? '',
        weight = json['peso'] ?? '',
        build = json['forma'] ?? '',
        hair = json['cabello'] ?? '',
        eyes = json['ojos'] ?? '';
}

class Character {
  final String name;
  final Appearance appearance;
  final String clothing;
  final String accessories;
  final String personality;
  final String roleInGame;

  const Character({
    required this.name,
    required this.appearance,
    required this.clothing,
    required this.accessories,
    required this.personality,
    required this.roleInGame,
  });

  Character.fromJson(Map<String, dynamic> json)
      : name = json['nombre'] ?? '',
        appearance = Appearance.fromJson(json['apariencia']),
        clothing = json['ropa'] ?? '',
        accessories = json['accesorios'] ?? '',
        personality = json['personalidad'] ?? '',
        roleInGame = json['roleneljuego'] ?? '';
}

const example1 = '''
<user>
{
  "descripcion": "perosnaje mistico"
  "personalidad": "inquebrantable"
  "rol": "Es el heroe de la historia sin dudar alguna"
  "historia": "resurgido de un pasado duro"
}
</user>
<model>
{
  "nombre": "Dany",
  "apareiencia": {
    "edad": "Su edad es como de 40 años",
    "altura": "mide aproximadamente 2 mts",
    "peso": "pesa aproximadamente 170 cm",
    "forma": "fortalecido por los años",
    "cabello": "Negro como la noche",
    "ojos": "Azul como el oceano."
  },
  "ropa": "de guerrero vinkingo con detales celestiales",
  "accesorios": "espada mistica y heredada de sus ante pasados",
  "personalidad": "de lider y guia para su pueblo",
  "roleneljuego": "Protector de la verdad y capaz de ser un guia"
}
</model>
''';

Content createPrompt(
    String description, String personality, String role, String background) {
  return Content.multi([
    TextPart('Escribe un Personaje para una historia o Juego. Ejemplos:'),
    TextPart(example1),
    TextPart('retorna una respuesta en JSON con el siguiente esquema:'),
    TextPart(outputSchema),
    TextPart('Crea un personaje con lo siguiente: '
        'descripcion: "$description", '
        'Personalidad: "$personality", '
        'Rol: "$role", and '
        'Historia: "$background".'),
  ]);
}

const outputSchema = '''
{
  "nombre": String,
  "apariencia": {
    "edad":  String,
    "altura": String,
    "peso": String,
    "forma": String
    "cabello": String,
    "ojos": String
  },
  "ropa": String,
  "accesorios": String,
  "personalidad": String
  "roleneljuego": String
}
''';
