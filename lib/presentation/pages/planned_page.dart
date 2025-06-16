import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/menu.dart';

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
                  Row(
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

                  Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(dividerColor: Colors.transparent),
                    child: Container(
                      color: Colors.transparent,
                      child: ExpansionTile(
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
                            color: ColorsRepository().indigoDye,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorsRepository().lightBlue,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Transform.scale(
                                          scale: 1.3,
                                          child: Checkbox(
                                            side: BorderSide(color: ColorsRepository().lightBlue),
                                            checkColor: Colors.white,
                                            fillColor: WidgetStateProperty.all(
                                              ColorsRepository().blueAlmWhite,
                                            ),
                                            value: isChecked,
                                            shape: CircleBorder(),
                                            onChanged: (bool? value) {
                                              setState(() {
                                                isChecked = value ?? false;
                                              });
                                            },
                                          ),
                                        ),
                                        
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Projeto Flutter demais', style: TextStyle(fontSize: 16, color: ColorsRepository().indigoDye, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400), textAlign: TextAlign.start,),
                                            Text('sáb, 16 de maio', style: TextStyle(fontSize: 12, color: ColorsRepository().cerulean, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400), textAlign: TextAlign.start,),
                                          ],
                                        ),
                                      ],
                                    ),
                                
                                    Transform.scale(
                                      scale: 1.2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.star_border_outlined, color: ColorsRepository().peach,),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: InkWell(
                onTap:
                    () => {
                      // cria nova tarefa
                    },
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
          ),
        ],
      ),
    );
  }
}
