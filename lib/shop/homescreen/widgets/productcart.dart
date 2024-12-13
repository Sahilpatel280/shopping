import 'package:flutter/material.dart';
import 'package:listtileviewdesign/common/widgets/product/product_cart_vertical.dart';
import 'package:listtileviewdesign/utils/constants/colors.dart';
import 'package:listtileviewdesign/utils/constants/image_strings.dart';

class Productcart extends StatelessWidget {
   Productcart({super.key});


  List<dynamic> titleList = [
    "Women Printed Kurta",
    'HRX by Hrithik Roshan',
    "Women Printed Kurta",
    'HRX by Hrithik Roshan',

  ];

  List<dynamic> imageList = [
    AssetImage(TImages.productimage1,),
    AssetImage(TImages.productimage1,),
    AssetImage(TImages.productimage1,),
    AssetImage(TImages.productimage1,),

  ];

  List<dynamic>descriptionList = [
    "Neque porro quisquam est qui dolorem ipsum quia",
    "Neque porro quisquam est qui dolorem ipsum quia",
    "Neque porro quisquam est qui dolorem ipsum quia",
    "Neque porro quisquam est qui dolorem ipsum quia",
  ];

  List<dynamic> originalPriceList = [
    "₹1500",
    "₹1500",
    "₹1500",
    "₹1500",

  ];
   List<dynamic> discountedPriceList = [
     "₹3500",
     "₹4500",
     "₹3500",
     "₹4500",
   ];
   List<dynamic> discountedList = [
     "40%Off",
     "40%Off",
     "40%Off",
     "40%Off",
   ];
   List<dynamic> reviewList = [
     "65211",
     "65211",
     "65211",
     "65211",
   ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount:titleList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return ProductCartVertical(
                    title: titleList[index],
                    imageUrl:imageList[index] ,
                    description:descriptionList [index] ,
                    originalPrice:originalPriceList[index] ,
                    discountedPrice:discountedPriceList[index],
                    discount: discountedList[index],
                    reviews: reviewList[index],
                  );
                }),
          ),
          Positioned(
              top: 100,
              width: 720,
              child:Container(
                height: 56,
                width: 56,
                child: CircleAvatar(
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.arrow_forward_ios,size: 20,),
                    )
                ),
              )
          ),
        ],
      )
    );
  }
}


