import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/text_field.dart';

Future<String?> buildShowDialog(BuildContext context) async {
  final TextEditingController controller = TextEditingController();

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        
        icon: Align(
          alignment: Alignment.centerLeft,
          child: Transform.scale(
            scale: 1.2,
            child: Icon(Icons.add_task_rounded),
          ),
        ),
        iconColor: ColorsRepository().indigoDye,
        content: SingleChildScrollView(
          child: buildTextField('Nova Tarefa', controller),
        ),
        actions: [
          TextButton(
            child: const Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          ElevatedButton(
            child: const Text('Criar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Widget buildAddTaskButton(BuildContext context) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.all(60.0),
      child: InkWell(
        onTap: () => {buildShowDialog(context)},
        child: Transform.scale(
          scale: 1.7,
          child: Material(
            shape: const CircleBorder(side: BorderSide.none),
            elevation: 4,
            child: CircleAvatar(
              backgroundColor: ColorsRepository().pennBlue,
              child: Icon(
                FontAwesomeIcons.plus,
                color: ColorsRepository().lightBlue,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
