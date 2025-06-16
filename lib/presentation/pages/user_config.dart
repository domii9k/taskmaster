import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';

class UserConfig extends StatefulWidget {
  const UserConfig({super.key});

  @override
  State<StatefulWidget> createState() => _UserConfigState();
}

class _UserConfigState extends State<UserConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(
          bottom: BorderSide(color: ColorsRepository().blueAlmWhite, width: 1),
        ),
        title: Text(
          'Configuracoes',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Josefin Sans',
            color: ColorsRepository().pennBlue,
          ),
        ),
        iconTheme: IconThemeData(
          color: ColorsRepository().pennBlue, // Change your color here
        ),
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Color(0XFFD8F2F8),
                      child: Icon(
                        Icons.person,
                        color: ColorsRepository().lightBlue,
                      ),
                    ),
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome do usuario',
                      style: TextStyle(
                        fontSize: 24,
                        color: ColorsRepository().indigoDye,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'email@teste.com',
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorsRepository().indigoDye,
                        fontFamily: 'Josefin Sans',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),

                IconButton(
                  onPressed: () => {},
                  icon: Transform.scale(
                    scale: 1.3,
                    child: Icon(
                      Icons.mode_edit_outline_outlined,
                      color: ColorsRepository().cerulean,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 18.0,
              top: 40.0,
              bottom: 6.0,
            ),
            child: Text(
              'Geral',
              style: TextStyle(
                fontSize: 20,
                color: ColorsRepository().pennBlue,
                fontFamily: 'Josefin Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    //criar dropdown
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ordem das Tarefas',
                          style: TextStyle(
                            fontSize: 20,
                            color: ColorsRepository().indigoDye,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Antigos Primeiro',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsRepository().cerulean,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    //criar dropdown
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Formato de hora',
                          style: TextStyle(
                            fontSize: 20,
                            color: ColorsRepository().indigoDye,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '24H',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsRepository().cerulean,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    //criar dropdown
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tema do App',
                          style: TextStyle(
                            fontSize: 20,
                            color: ColorsRepository().indigoDye,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Claro',
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorsRepository().cerulean,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 18.0,
              top: 40.0,
              bottom: 6.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'App Conectado',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorsRepository().pennBlue,
                    fontFamily: 'Josefin Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Transform.scale(
                  scale: 1.5,
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.plus,
                      color: ColorsRepository().lightBlue,
                    ),
                    onPressed: () {
                      // adiconar nova conexão
                    },
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Google Calendar',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorsRepository().indigoDye,
                    fontFamily: 'Josefin Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Sua conta está vinculada ao Google Calendar',
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorsRepository().cerulean,
                    fontFamily: 'Josefin Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 18.0,
              top: 40.0,
              bottom: 6.0,
            ),
            child: Text(
              'Ajuda e Sobre',
              style: TextStyle(
                fontSize: 20,
                color: ColorsRepository().pennBlue,
                fontFamily: 'Josefin Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Perguntas Frequentes',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Privacidade',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Termos de Uso',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Google Calendar',
                        style: TextStyle(
                          fontSize: 20,
                          color: ColorsRepository().indigoDye,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        '0.0.1',
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorsRepository().cerulean,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 18.0,
              top: 40.0,
              bottom: 6.0,
            ),
            child: Text(
              'Siga-nos',
              style: TextStyle(
                fontSize: 20,
                color: ColorsRepository().pennBlue,
                fontFamily: 'Josefin Sans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 40, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Twitter',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorsRepository().indigoDye,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    // sair do app
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 24, bottom: 12),
                    child: Text(
                      'Sair do App',
                      style: TextStyle(
                        fontFamily: 'Josefin Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
