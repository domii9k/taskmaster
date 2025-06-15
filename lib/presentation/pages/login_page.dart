import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/widgets/login_options.dart';
import 'package:taskmaster/presentation/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                            color: ColorsRepository().indigoDye,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Josefin Sans',
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
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Esqueceu a senha?",
                                style: TextStyle(
                                  color: ColorsRepository().cerulean,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 40),
                        child: SizedBox(
                          width: 340,
                          height: 53,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          'Nao possui conta? Registre-se aqui.',
                          style: TextStyle(
                            color: ColorsRepository().cerulean,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.underline
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
