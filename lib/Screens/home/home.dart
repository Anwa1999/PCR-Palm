import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/Models/Item.dart';
import 'package:nutrition_app/Screens/home/components/item_card.dart';
import 'package:nutrition_app/components/app_bar.dart';
import 'package:nutrition_app/components/bottom_nav.dart';
import 'package:nutrition_app/constants.dart';
import 'package:nutrition_app/Screens/details/components/camera.dart';
import 'package:nutrition_app/Screens/home/components/categories.dart';

import 'components/filter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: Transform.translate(
            offset: Offset(kDefaultPadding * 0.5, 0),
            child: IconButton(
                icon: Image.asset('assets/images/logo2.png'),
                onPressed: () {})),
        title: 'CPR Palm',
        actions: <Widget>[
          // IconButton(
          //     icon: SvgPicture.asset('assets/icons/ntfc.svg'), onPressed: () {})
        ],
        //backgroundColor: Colors.red,
      ),
      //bottomNavigationBar: BottomNavBar(),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Text(
              //  'Palm',
              //  style: TextStyle(
              //      color: Colors.black,
              //      fontSize: 24,
              //      fontWeight: FontWeight.w700),
              // ),
              //SizedBox(height: kDefaultPadding),
              //Row(children: [
              FilterButton(
                tap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Camera()),
                  );
                },
              ),
              //]),

              SizedBox(height: kDefaultPadding),
              Text(
                'ความรู้เกี่ยวกับปาล์มน้ำมัน',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: kDefaultPadding),
              StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: demoItems.length,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ItemCard(item: demoItems[index], index: index);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
 //RaisedButton(
   //                color: Color.fromRGBO(175, 238, 238, 1),
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20),
     //              ),
      //             onPressed: () {
      //               Navigator.push(
       //                context,
      //                 MaterialPageRoute(builder: (context) => Camera()),
        //             );
        //           },
        //           child: Text(
         //            "จำแนก",
         //            style: TextStyle(fontSize: 30.0, color: Colors.black),
          //         )),