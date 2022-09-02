import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:nutrition_app/Models/Category2.dart';
import 'package:nutrition_app/Screens/details/SelectedCategoryPage.dart';
import 'package:nutrition_app/Screens/home/components/categories.dart';
import 'package:nutrition_app/Screens/home/components/utils.dart';
import 'package:nutrition_app/components/app_bar.dart';

import 'components/categorycard.dart';

class AdviceList extends StatelessWidget {
//final Category item;

  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: IconButton(
            icon: SvgPicture.asset('assets/icons/b.svg'),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: 'แนะนำการดูแลรักษา',
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'เลือกรายการที่ต้องการดูคำแนะนำ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedCategoryPage(
                                        selectedCategory:
                                            this.categories[index],
                                      )));
                        });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
