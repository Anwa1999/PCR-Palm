import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrition_app/Models/Category2.dart';
import 'package:nutrition_app/components/app_bar.dart';

import '../../constants.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.1),
            padding: EdgeInsets.only(top: size.height * 0.3),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 4),
                topRight: Radius.circular(kDefaultPadding * 4),
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedCategory.name,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      selectedCategory.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      selectedCategory.description2,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      selectedCategory.description3,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      selectedCategory.description4,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      selectedCategory.description5,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    /* Text(
                      item.description6,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description7,
                      style: TextStyle(fontSize: 16),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
          Hero(
              tag: selectedCategory.id,
              child: Image.asset(
                selectedCategory.image,
                height: size.height * 0.4,
                fit: BoxFit.fitHeight,
              )),
        ],
      ),
    );
  }
}

/*body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.1),
            padding: EdgeInsets.only(top: size.height * 0.3),
            height: size.height * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 4),
                  topRight: Radius.circular(kDefaultPadding * 4),
                ),
                color: Color(item.color2)),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                  kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.name,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description2,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description3,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description4,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description5,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description6,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding),
                    Text(
                      item.description7,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Hero(
              tag: item.id,
              child: Image.asset(
                item.image,
                height: size.height * 0.4,
                fit: BoxFit.fitHeight,
              )),
        ],
      ),*/







 //child: Center(child: Text(this.selectedCategory.name)),


 /*body: Container(
            margin: EdgeInsets.all(20),
            height: 170,
            width: 200,
            child: Stack(
              children: [
                Positioned.fill(
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/' + this.selectedCategory.imgName + '.JPG',
                    fit: BoxFit.cover,
                  ),
                )),
              ],
            ))*/