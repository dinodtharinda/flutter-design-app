// ignore_for_file: invalid_use_of_protected_member, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_design_app/utils/custom/app_custom_widgets.dart';
import 'package:flutter_design_app/utils/themes/themes.dart';
import 'package:provider/provider.dart';

import '../../../../utils/constant/dimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const String imageUrl1 =
    "https://www.marthastewart.com/thmb/dM_cqMBhlcmnUpRSH4NaVIZ6r3s=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/our-best-laundry-tips-sort-colors-whites-getty-0923-19487a0ec97d4b67bf4810505285dba9.jpg";
const String imageUrl2 =
    "https://di-uploads-pod36.dealerinspire.com/hiltonheadhonda/uploads/2018/05/Car-Wash-1.jpg";

class _HomeScreenState extends State<HomeScreen> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Home",
        actions: [
          IconButton(
              onPressed: () {
                context.read<AppThemes>().toggleTheme();
              },
              icon: const Icon(Icons.dark_mode))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dime.SCREEN_WIDTH(context) * 0.4,
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: const [
                  ServiceCard(
                    title: "Dry Clean",
                    description: "Dry Clean your Cloths",
                    rating: 3.5,
                    ratingCount: 3.5,
                    imageUrl: imageUrl1,
                  ),
                  ServiceCard(
                    title: "Dry Clean",
                    description: "Dry Clean your Cloths",
                    rating: 3.5,
                    ratingCount: 3.5,
                    imageUrl: imageUrl1,
                  ),
                  ServiceCard(
                    title: "Dry Clean",
                    description: "Dry Clean your Cloths",
                    rating: 3.5,
                    ratingCount: 3.5,
                    imageUrl: imageUrl1,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SeeMoreButton(
                  onTap: () {
                    print("See All");
                  },
                ),
                SizedBox(
                  height: Dime.SCREEN_WIDTH(context) * 0.34,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ImageCard(
                        title: "Wash and Fold",
                        imageUrl: imageUrl2,
                        ratings: 3.4,
                      ),
                      ImageCard(
                        title: "Wash and Fold",
                        imageUrl: imageUrl2,
                        ratings: 3.4,
                      ),
                      ImageCard(
                        title: "Wash and Fold",
                        imageUrl: imageUrl2,
                        ratings: 3.4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const ProductListTile(
              title: "Dry Clean",
              subtitle: "Dry your cloths fast",
              imageUrl:
                imageUrl1,
              rating: 3.5,
            ),
            const BannerCard(
              title: "SPECIAL DEAL",
              subtitle: "Get 20% Off on your first order & Free Delivery",
            ),
            const CustomSlider(items: [
              BannerCard(
                title: "SPECIAL DEAL",
                subtitle: "Get 20% Off on your first order & Free Delivery",
              ),
              BannerCard(
                title: "SPECIAL DEAL",
                subtitle: "Get 20% Off on your first order & Free Delivery",
              ),
              BannerCard(
                title: "SPECIAL DEAL",
                subtitle: "Get 20% Off on your first order & Free Delivery",
              ),
              BannerCard(
                title: "SPECIAL DEAL",
                subtitle: "Get 20% Off on your first order & Free Delivery",
              ),
              BannerCard(
                title: "SPECIAL DEAL",
                subtitle: "Get 20% Off on your first order & Free Delivery",
              ),
            ]),
            const SmallCard(),
            const SizedBox(
              height: 10,
            ),
            CartTile(
              title: "White Color T shirt",
              price: 750,
              quantity: _quantity,
              remove: () {
                setState(() {
                  _quantity--;
                });
              },
              add: () {
                setState(() {
                  _quantity++;
                });
              },
            ),
            // const AlphaProductCard(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
//  "SPECIAL DEAL"
//  "Get 20% Off on your first order & Free Delivery"