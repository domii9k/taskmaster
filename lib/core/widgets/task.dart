import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';

class Task extends StatefulWidget {
  final String title;
  final String date;
  final bool isChecked;
  final bool isGoogleCalendar;

  const Task({
    super.key,
    required this.title,
    required this.date,
    required this.isChecked,
    required this.isGoogleCalendar,
  });

  @override
  State<StatefulWidget> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  late bool isChecked;
  late bool isGoogleCalendar;

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked;
    isGoogleCalendar = widget.isGoogleCalendar;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsRepository().lightBlue),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorsRepository().indigoDye,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        widget.date,
                        style: TextStyle(
                          fontSize: 12,
                          color: ColorsRepository().cerulean,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isGoogleCalendar)
                    Transform.scale(
                      scale: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          FontAwesomeIcons.calendarDay,
                          color: ColorsRepository().lightBlue,
                        ),
                      ),
                    ),

                  Transform.scale(
                    scale: 1.2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star_border_outlined,
                        color: ColorsRepository().peach,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
