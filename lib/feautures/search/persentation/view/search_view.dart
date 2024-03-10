import 'package:flutter/material.dart';
import 'package:light_banking/core/utils/app_colors.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/List View Widget.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../widget/Search_continer_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: appBarWidgetTow(context,AppStrings.myCards,Icons.add_outlined,"/addCard")),
          SliverToBoxAdapter(
         child:Padding(
           padding: const EdgeInsets.only(bottom: 30),
           child: searchContainer("Search"),
         ),
          ),
          listViewWidgetWithoutPadding(),
          listViewWidgetWithoutPadding(),
      ],),
      ),
    );
  }
}

