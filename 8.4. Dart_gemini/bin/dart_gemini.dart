import 'package:google_generative_ai/google_generative_ai.dart';


void main() async {

  final apiKey = "  ";

  final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
  final content = [Content.text('Cual es la forma de la Luna?')];
  final response = await model.generateContent(content);
  print(response.text);
}
