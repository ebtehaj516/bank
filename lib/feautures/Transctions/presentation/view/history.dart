import 'package:flutter/material.dart';
import 'package:light_banking/core/widgets/custom_btn.dart';

import '../../../../core/widgets/List View Widget.dart';
import '../../../statistics/presentation/widgets/pie_chart.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:CustomBtn(
          text: "Catogray Chart",
          onPressed: (){
            showModalBottomSheet(context: context, builder: (BuildContext context){
              return Container(
                 child: Column(
                   children: [
                     Pi_chart(),



                   ],
                 )
              );
            });
          },
        )
      ),
    );
  }
}

