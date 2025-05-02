
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../feuters/app_colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
    required this.basketList,
  });

  final List basketList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical:10 ),
      child: Container(
          width: double.infinity,
          height: 77,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 215,
                child: ListView.builder( scrollDirection: Axis.horizontal, itemCount: basketList.length, itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(basketList[index].image,),
                      ),
                    ),
                  );
                }),
              ),
              Spacer(),
              Container(
                width: 2,
                height: 40,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Text("View Basket",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              SvgPicture.asset("assets/Icons/Basket.svg",color: Colors.white,),
              SizedBox(width: 10,),
            ],
          )
      ),
    );
  }
}