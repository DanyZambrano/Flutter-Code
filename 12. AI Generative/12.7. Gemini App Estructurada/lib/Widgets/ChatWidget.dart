import 'package:flutter/material.dart';
import 'package:gemini_character/CharacterService.dart';
import 'package:gemini_character/Widgets/InputDecorationWidget.dart';


class ChatWidget extends StatefulWidget {
  const ChatWidget({required this.apiKey, super.key});

  final String apiKey;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  Future<Character>? characterResponse;
  late final CharacterService service;
  final descriptionController = TextEditingController();
  final roleController = TextEditingController();
  final personalityController = TextEditingController();
  final backgroundController = TextEditingController();

  @override
  void initState() {
    super.initState();
    service = CharacterService(widget.apiKey);
  }

  Widget _buildForm(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Crea un personaje'),
          const SizedBox(height: 32),

          Text('Describe el personaje para tu historia / juego!', style: theme.textTheme.labelLarge),
          const SizedBox(height: 8),

          TextField(
            controller: descriptionController,
            decoration: textFieldDecoration( context,
              'Es un personaje Heroico y Muy Inteligente',
            ),
          ),
          const SizedBox(height: 16),

          Text('Que Rol deseas para el Personaje?',  style: theme.textTheme.labelLarge,   ),
          const SizedBox(height: 8),

          TextField(
            controller: roleController,
            decoration: textFieldDecoration(context,
              'Su rol debe ser Heroico, un Heroe',
            ),
          ),
          const SizedBox(height: 16),

          Text('Describe su personalidad!',style: theme.textTheme.labelLarge,  ),
          const SizedBox(height: 8),

          TextField(
            controller: personalityController,
            decoration: textFieldDecoration( context,
              'Es valiente, audaz y muy humilde',
            ),
          ),
          const SizedBox(height: 16),

          Text('Cual es el pasado del personaje?',style: theme.textTheme.labelLarge, ),
          const SizedBox(height: 8),

          TextField(
            controller: backgroundController,
            decoration: textFieldDecoration( context,
              'Una niñez compleja que le ayudo a ser el heroe',
            ),
          ),
          const SizedBox(height: 16),
          
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              child: const Text('Crear Personaje!'),
              onPressed: () {
                setState(() {
                  characterResponse = service.generateCharacter(
                      descriptionController.text,
                      personalityController.text,
                      roleController.text,
                      backgroundController.text);
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCharacterDisplay(BuildContext context, Character character) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text( character.name, style: theme.textTheme.displayLarge, ),

          const SizedBox(height: 32),
          Text('Aparencia',style: theme.textTheme.titleSmall,  ),

          const SizedBox(height: 16),
          Text('Edad: ${character.appearance.age}',  style: theme.textTheme.bodyLarge, ),

          const SizedBox(height: 8),
          Text( 'Altura: ${character.appearance.height}',style: theme.textTheme.bodyLarge,  ),

          const SizedBox(height: 8),
          Text('Peso: ${character.appearance.weight}',  style: theme.textTheme.bodyLarge, ),

          const SizedBox(height: 8),
          Text( 'Cuerpo: ${character.appearance.build}',  style: theme.textTheme.bodyLarge,),
          const SizedBox(height: 8), 

          Text( 'Cabello: ${character.appearance.hair}', style: theme.textTheme.bodyLarge, ),
          const SizedBox(height: 8),

          Text( 'Ojos: ${character.appearance.eyes}', style: theme.textTheme.bodyLarge, ),
          const SizedBox(height: 16),

          Text( 'Ropa', style: theme.textTheme.titleSmall,),
          const SizedBox(height: 16),

          Text( character.clothing, style: theme.textTheme.bodyLarge,),
          const SizedBox(height: 16),

          Text( 'Accesorios', style: theme.textTheme.titleSmall, ),
          const SizedBox(height: 16),

          Text( character.accessories,style: theme.textTheme.bodyLarge,  ),
          const SizedBox(height: 16),

          Text('Personalidad', style: theme.textTheme.titleSmall,),
          const SizedBox(height: 16),

          Text(character.personality, style: theme.textTheme.bodyLarge, ),
          const SizedBox(height: 16),

          Text( 'Rol',style: theme.textTheme.titleSmall,  ),
          const SizedBox(height: 16),

          Text( character.roleInGame, style: theme.textTheme.bodyLarge, ),
          const SizedBox(height: 32),
          Align( alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  characterResponse = null;
                });
              },
              child: const Text('Regresar'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorDisplay(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Center(
            child: Text(
              'Error',
              style: theme.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 32),
          Text('error en la Conexion!',
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 32),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  characterResponse = null;
                  descriptionController.clear();
                });
              },
              child: const Text('Intente Nuevamente!!'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildThinkingIndicator(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: SingleChildScrollView(
        child: (characterResponse == null)
            ? _buildForm(context)
            : FutureBuilder(
                future: characterResponse,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return _buildCharacterDisplay(context, snapshot.data!);
                  } else if (snapshot.hasError) {
                    return _buildErrorDisplay(context);
                  }

                  return _buildThinkingIndicator(context);
                },
              ),
      ),
    );
  }
}
