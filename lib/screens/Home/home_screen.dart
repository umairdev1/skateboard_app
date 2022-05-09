import 'package:flutter/material.dart';
import 'package:skateboard_app/model/category_model.dart';
import 'package:skateboard_app/model/product_model.dart';
import 'package:skateboard_app/screens/detail/detail_scren.dart';
import 'package:skateboard_app/utilities/colors.dart';

import 'widget/category_card.dart';
import 'widget/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: ListView(
          children: [
            //appbar
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: kWhiteClr,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                      color: kWhiteClr,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.sort,
                    color: kWhiteClr,
                    size: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: kPrimaryClr,
              thickness: 2,
            ),
            //banner
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/banner.jpeg"))),
            ),
            //category List
            //create model of category
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorytitle.length,
                  itemBuilder: (context, index) {
                    return CategoryCard(
                        category: categorytitle[index], press: () {});
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            //products
            //create product model
            GridView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: productinfo.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.63,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                itemBuilder: (context, index) {
                  return ProductCard(
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    product: productinfo[index],
                                  )));
                    },
                    product: productinfo[index],
                  );
                }),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      )),
    );
  }
}
