
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listtileviewdesign/shop/homescreen/widgets/allFeaturedcatgory.dart';
import 'package:listtileviewdesign/shop/homescreen/widgets/allFeaturedheader.dart';
import 'package:listtileviewdesign/shop/homescreen/widgets/homebannersider.dart';
import 'package:listtileviewdesign/shop/homescreen/widgets/productcart.dart';
import 'package:listtileviewdesign/shop/homescreen/widgets/searchbar.dart';
import 'package:listtileviewdesign/utils/constants/image_strings.dart';
import 'package:listtileviewdesign/utils/constants/sizes.dart';
import 'package:listtileviewdesign/utils/constants/text_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Screen/loginScreen/loginScreen.dart';
import '../../Screen/onboarding/widgets/onboardingbottomNav.dart';
import '../../common/widgets/dealscart/days_deal.dart';
import '../../utils/constants/colors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 83,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(TImages.logo,height: 31.03,width: 38.78,),
                SizedBox(width: 4,),
                Text(
                  TTexts.homeaAppbartitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: TSizes.fontSizeLg.sp,
                    color: TColors.homeAppbartitleColor,
                  ),

                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              child: Image.asset(TImages.profile,fit: BoxFit.cover),
            )
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            /// SearchBar
             searchbarbutton(text: "Search any Product..",),
            SizedBox(height: 16,),

            /// All Featured Headings
              allFeatureheader(),

            ///All Featured catergies
            SizedBox(height: 20,),
            allFeaturecategory(),

            SizedBox(height: 16,),

            /// Banner
            TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner1,TImages.promoBanner1]),

            SizedBox(height: 16,),

            ///Deal of the day
            Dayofdeals(title: 'Deal of the Day',icon: Icons.access_alarm, subtitle: '22h 55m 20s remaining', icondata: 'view All', clickicon: Icons.arrow_forward_ios ,),

            ///productcard
            SizedBox(height: 26,),

            Productcart(),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              accountName: Text("Sahil Patel") ,
              accountEmail: Text("patel.sahil2805@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(TImages.profile,fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.explore),
                    title: Text("Explore"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.heart_broken),
                    title: Text("Favorities"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.message),
                    title: Text("Message"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                  ),
                  ListTile(
                    onTap: ()async{
                      var sharedPref = await SharedPreferences.getInstance();

                      sharedPref.setBool(onboardingbottomNav.KEYLOGIN, false);

                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginscreen(),));

                    },
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








