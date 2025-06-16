import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/checkbox.dart';
import 'package:taskmaster/core/widgets/login_options.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.red,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/Logo.png",
                        height: 34,
                        width: 74,
                      ),
                      Text(
                        "TaskMaster",
                        style: TextStyle(
                          color: ColorsRepository().pennBlue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Josefin Sans',
                        ),
                      ),
                    ],
                  ),
                ),

                //Informacoes de login da pagina
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 16),
                          child: Text(
                            "Cadastrar-se",
                            style: TextStyle(
                              color: ColorsRepository().indigoDye,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Josefin Sans',
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8, top: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                    color: ColorsRepository().cerulean,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().cerulean,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().lightBlue,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().lightBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: "Senha",
                                  labelStyle: TextStyle(
                                    color: ColorsRepository().cerulean,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().cerulean,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().lightBlue,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16),
                                    borderSide: BorderSide(
                                      color: ColorsRepository().lightBlue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 0),
                        child: SizedBox(
                          width: 340,
                          height: 53,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/tasksoftheday');
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                ColorsRepository().pennBlue,
                              ),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                color: ColorsRepository().white,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              CheckboxWidget(),
                              Flexible(
                                child: Text(
                                  'Aceito os termos e condições do aplicativo. Saiba mais.',
                                  style: TextStyle(
                                    color: ColorsRepository().cerulean,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Divider(
                                color: ColorsRepository().lightBlue,
                                thickness: 1,
                              ),
                            ),
                          ),
                          Text(
                            "ou",
                            style: TextStyle(
                              color: ColorsRepository().cerulean,
                              fontSize: 18,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: Divider(
                                color: ColorsRepository().lightBlue,
                                thickness: 1,
                              ),
                            ),
                          ),
                        ],
                      ),

                      //OUTRAS OPCOES DE ENTRADA NA APLICACAO
                      Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildLoginOptions(FontAwesomeIcons.facebook),
                            buildLoginOptions(FontAwesomeIcons.google),
                            buildLoginOptions(FontAwesomeIcons.apple),
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed('/login'); 
                        },
                        child: Text(
                          'Ja possui conta? Entre aqui.',
                          style: TextStyle(
                            color: ColorsRepository().cerulean,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
