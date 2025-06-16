import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';
import 'package:taskmaster/core/widgets/items_list.dart';

Widget buildMenu(BuildContext context) {
  return Stack(
    children: [
      Drawer(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/userconfig');
                  },
                  child: DrawerHeader(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nome do usuario',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorsRepository().indigoDye,
                                    fontFamily: 'Josefin Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'email@teste.com',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorsRepository().indigoDye,
                                    fontFamily: 'Josefin Sans',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    //tarefas do dia
                    buildItemList(
                      context,
                      Icons.sunny,
                      'Tarefas do Dia',
                      ColorsRepository().yellow,
                      '/',
                    ),

                    //favoritos
                    buildItemList(
                      context,
                      Icons.star_border_outlined,
                      'Favoritas',
                      ColorsRepository().peach,
                      '/favorites',
                    ),

                    //planejados
                    buildItemList(
                      context,
                      Icons.calendar_month_outlined,
                      'Planejados',
                      ColorsRepository().lightBlue,
                      '/',
                    ),

                    //todas as tarefas
                    buildItemList(
                      context,
                      Icons.done_all,
                      'Todas as Tarefas',
                      ColorsRepository().lightPurple,
                      '/',
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Divider(color: ColorsRepository().lightBlue),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                  top: 6.0,
                  bottom: 6.0,
                ),
                child: Text(
                  'Listas',
                  style: TextStyle(
                    fontSize: 18,
                    color: ColorsRepository().indigoDye,
                    fontFamily: 'Josefin Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //lista de compras
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Column(
                  children: [
                    buildItemList(
                      context,
                      Icons.shopping_cart_outlined,
                      'Lista de Compras',
                      ColorsRepository().lightBlue,
                      '/',
                    ),
                    buildItemList(
                      context,
                      Icons.work_outline_rounded,
                      'Tarefas do Trabalho',
                      ColorsRepository().lightBlue,
                      '/',
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Divider(color: ColorsRepository().lightBlue),
              ),

              Theme(
                data: Theme.of(
                  context,
                ).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  dense: true,
                  minTileHeight: 0,
                  initiallyExpanded: true,
                  title: Text(
                    'Categorias',
                    style: TextStyle(
                      fontFamily: 'Josefin Sans',
                      fontSize: 18,
                      color: ColorsRepository().indigoDye,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: buildItemList(
                        context,
                        Icons.fastfood_outlined,
                        'Alimentos',
                        ColorsRepository().celadon,
                        '/',
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                      child: buildItemList(
                        context,
                        Icons.school_outlined,
                        'Escola',
                        ColorsRepository().lightPurple,
                        '/',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //futuro adiciona nova categoria e nova lista
      Padding(
        padding: const EdgeInsets.only(
          top: 40.0,
          left: 40.0,
          right: 40.0,
          bottom: 60.0,
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                scale: 1.5,
                child: Material(
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 4,
                  child: CircleAvatar(
                    backgroundColor: Color(0XFFE9D4FB),
                    child: Icon(Icons.category, color: Color(0XFFCFBAE1)),
                  ),
                ),
              ),
              Transform.scale(
                scale: 1.5,
                child: Material(
                  shape: const CircleBorder(side: BorderSide.none),
                  elevation: 4,
                  child: CircleAvatar(
                    backgroundColor: ColorsRepository().blueAlmWhite,
                    child: Icon(
                      Icons.playlist_add_check_sharp,
                      color: ColorsRepository().lightBlue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
