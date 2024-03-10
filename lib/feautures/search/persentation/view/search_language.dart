import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/app_bar_widget.dart';
import '../../../../core/widgets/single_item.dart';
import '../../../../generated/assets.dart';
import '../widget/Search_continer_widget.dart';

class SearchLanguage extends StatelessWidget {
  const SearchLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: appBarWidgetOne(context, AppStrings.language),),
            SliverToBoxAdapter(
          child:Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: searchContainer("Search "+ AppStrings.language),
          ),
        ),
              SliverToBoxAdapter(child: SingleItem2(Assets.imagesEnglish ,AppStrings.english),),
              SliverToBoxAdapter(child: SingleItem2(Assets.imagesAustralia ,AppStrings.australia),),
              SliverToBoxAdapter(child: SingleItem2(Assets.imagesFranch ,AppStrings.franch),),
              SliverToBoxAdapter(child: SingleItem2(Assets.imagesAmerica ,AppStrings.america),),
              SliverToBoxAdapter(child: SingleItem2(Assets.imagesVietnam ,AppStrings.vietnam),),
        ])
      ),
    );
  }
}
