import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/add_new__task.dart';
import 'package:taskmaster/core/widgets/menu.dart';
import 'package:taskmaster/core/widgets/task.dart';

class PlannedPage extends StatefulWidget {
  const PlannedPage({super.key});

  @override
  State<PlannedPage> createState() => _PlannedPageState();
}

class _PlannedPageState extends State<PlannedPage> {
  bool isChecked = false;

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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Planejados',
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
                            scale: 1.5,
                            child: Icon(
                              Icons.calendar_month_outlined,
                              color: ColorsRepository().lightBlue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(dividerColor: Colors.transparent),
                    child: Container(
                      color: Colors.transparent,
                      child: ExpansionTile(
                        collapsedIconColor: ColorsRepository().cerulean,
                        iconColor: Colors.red,
                        backgroundColor: Colors.transparent,
                        collapsedBackgroundColor:
                            ColorsRepository().extraLightPurple,
                        dense: true,
                        minTileHeight: 0,
                        initiallyExpanded: true,
                        title: Text(
                          'Esta semana, ate dom, 17 de maio',
                          style: TextStyle(
                            fontFamily: 'Josefin Sans',
                            fontSize: 12,
                            color: ColorsRepository().cerulean,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        children: [
                          Task(
                            title: 'Projeto Flutter bao demais',
                            date: 'sab, 16 de maio',
                            isChecked: false,
                            isGoogleCalendar: true,
                          ),
                          Task(
                            title: 'Projeto Flutter bao demais 2',
                            date: 'sab, 16 de maio',
                            isChecked: false,
                            isGoogleCalendar: false,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(dividerColor: Colors.transparent),
                    child: Container(
                      color: Colors.transparent,
                      child: ExpansionTile(
                        collapsedIconColor: ColorsRepository().cerulean,
                        iconColor: Colors.red,
                        backgroundColor: Colors.transparent,
                        collapsedBackgroundColor:
                            ColorsRepository().extraLightPurple,
                        dense: true,
                        minTileHeight: 0,
                        initiallyExpanded: true,
                        title: Text(
                          'Mais Tarde',
                          style: TextStyle(
                            fontFamily: 'Josefin Sans',
                            fontSize: 12,
                            color: ColorsRepository().cerulean,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        children: [
                          Task(
                            title: 'Design Logo IFood',
                            date: 'dom, 15 de abril',
                            isChecked: false,
                            isGoogleCalendar: true,
                          ),
                          Task(
                            title: 'Projeto Flutter bao demais 3',
                            date: 'sab, 16 de maio',
                            isChecked: false,
                            isGoogleCalendar: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          buildAddTaskButton(context),
        ],
      ),
    );
  }
}
