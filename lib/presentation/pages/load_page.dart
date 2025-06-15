import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:lottie/lottie.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key});

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Logo.png"),
                  SizedBox(height: 40),
                  Text(
                    "TaskMaster",
                    style: TextStyle(
                      color: ColorsRepository().pennBlue,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Josefin Sans',
                    ),
                  ),
                  SizedBox(height: 20),
                  Lottie.asset(
                    'assets/animations/loading.json',
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Produtividade e organização em um só lugar.',
                  style: TextStyle(
                    color: ColorsRepository().cerulean,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Josefin Sans',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
