import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/add_new__task.dart';
import 'package:taskmaster/core/widgets/menu.dart';

class TasksOfTheDay extends StatefulWidget {
  const TasksOfTheDay({super.key});

  @override
  State<TasksOfTheDay> createState() => _TasksOfTheDayState();
}

class _TasksOfTheDayState extends State<TasksOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildMenu(context),
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) {
            return Transform.scale(
              scale: 2.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: IconButton(
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Image.asset("assets/images/Logo.png"),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Tarefas do Dia',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: ColorsRepository().pennBlue,
                              fontFamily: 'Josefin Sans',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24.0),
                            child: Transform.scale(
                              scale: 2,
                              child: Icon(
                                Icons.sunny_snowing,
                                color: ColorsRepository().yellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'terca-feira, 15 de Março',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Josefin Sans',
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: InkWell(
                      onTap: () {
                        buildShowDialog(context);
                      },
                      child: Center(
                        child: DottedBorder(
                          options: RectDottedBorderOptions(
                            dashPattern: [10, 5],
                            strokeWidth: 2,
                            padding: EdgeInsets.all(24),
                            color: ColorsRepository().celadon,
                            strokeCap: StrokeCap.round,
                          ),
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Transform.scale(
                                  scale: 2,
                                  child: Icon(
                                    Icons.add_task,
                                    color: ColorsRepository().lightBlue,
                                  ),
                                ),
                                Text(
                                  'Que tal comecar adicionando uma nova tarefa?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Josefin Sans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: ColorsRepository().cerulean,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          buildAddTaskButton(context)
        ],
      ),
    );
  }
}
