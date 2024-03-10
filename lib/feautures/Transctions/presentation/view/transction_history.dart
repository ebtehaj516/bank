
import 'package:flutter/material.dart';
import 'package:light_banking/core/widgets/stack_widget.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/List View Widget.dart';
import '../../../../core/widgets/app_bar_widget.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomScrollView(
            slivers: [
            SliverToBoxAdapter(child: appBarWidgetTow(context,AppStrings.transactionHistory,Icons.refresh_outlined,'/history')),
              SliverToBoxAdapter(child: Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: row(AppStrings.today),
              ),),
              listViewWidgetWithoutPadding(),
              listViewWidgetWithoutPadding(),
            ]),
      ),
    );
  }
}
