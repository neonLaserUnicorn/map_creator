import 'package:flutter/material.dart';
import 'package:map_creator/basic_widgets.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: const [
          Expanded(child: MenuColumn(), flex: 1),
          Expanded(child: Placeholder(),flex: 2,),
        ],
      ),
    );
  }
}

class MenuColumn extends StatelessWidget {
  const MenuColumn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainButton(text: 'Новая карта', onPressed: (){
          Navigator.of(context).pushNamed('/map');
        },),
        MainButton(text: 'Загрузить карту', onPressed: (){},),
        MainButton(text: 'Настройки', onPressed: (){},),
        MainButton(text: 'Выход', onPressed: (){},),
        const SizedBox(height: 24.0,),
      ],
      );
  }
}