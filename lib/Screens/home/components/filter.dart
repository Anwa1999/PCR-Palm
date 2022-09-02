import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({
    Key key,
    @required this.tap,
  }) : super(key: key);

  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: GestureDetector(
        onTap: tap,
        child: Container(
          height: 70.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromRGBO(175, 238, 238, 1),
          ),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.2),
          margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/camera.svg'),
              Text(
                "  จำแนกอาการขาดธาตุอาหาร",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 21,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
