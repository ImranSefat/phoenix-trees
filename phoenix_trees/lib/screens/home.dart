import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:phoenix_trees/constants/firbase_auth_constants.dart';
import 'package:phoenix_trees/models/homeItems.dart';
import 'package:phoenix_trees/models/home_card_item_model.dart';
import 'package:phoenix_trees/models/organizer_model.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var _selected = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         authController.signOut();
      //       },
      //       icon: const Icon(Icons.cancel),
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff292d32).withOpacity(0.2),
                        offset: const Offset(0, 5),
                        blurRadius: 50,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Impact",
                              style: Get.textTheme.headline6!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Trees Planted: 2M",
                              style: Get.textTheme.subtitle1!.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: SvgPicture.asset(
                            'assets/images/shape01.svg',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 140,
                  child: ScrollConfiguration(
                    behavior:
                        const ScrollBehavior().copyWith(overscroll: false),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: homeItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            _selected.value = index;
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Obx(
                                  () => Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _selected.value == index
                                          ? const Color(0xffE1B770)
                                          : Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xff292d32)
                                              .withOpacity(0.1),
                                          offset: const Offset(0, 5),
                                          blurRadius: 50,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Center(
                                        child: Icon(
                                          homeItems[index].iconData,
                                          color: _selected.value == index
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Obx(
                                  () => Opacity(
                                    opacity: _selected.value == index ? 1 : 0.2,
                                    child: Text(
                                      homeItems[index].title,
                                      style: Get.textTheme.subtitle1!.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Need to help",
                  style: Get.textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 250,
                  child: ScrollConfiguration(
                    behavior:
                        const ScrollBehavior().copyWith(overscroll: false),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: homecardItemList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: HomeCardItem(
                            homeCardItemModel: homecardItemList[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Text(
                  "Need to help",
                  style: Get.textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                  height: 70,
                  child: ScrollConfiguration(
                    behavior:
                        const ScrollBehavior().copyWith(overscroll: false),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: organizerList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: OrganizationListWidget(
                            organizerModel: organizerList[index],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrganizationListWidget extends StatelessWidget {
  final OrganizerModel organizerModel;
  const OrganizationListWidget({
    Key? key,
    required this.organizerModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      // width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff292d32).withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 10,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 4.0,
        ),
        child: Row(
          children: [
            CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  organizerModel.imageLink,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  organizerModel.title,
                  style: Get.textTheme.subtitle1!.copyWith(),
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.starHalfAlt,
                      size: 12,
                      color: Colors.yellow[900],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      organizerModel.rating.toString(),
                      style: Get.textTheme.caption!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeCardItem extends StatelessWidget {
  final HomeCardItemModel homeCardItemModel;

  const HomeCardItem({
    Key? key,
    required this.homeCardItemModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 110.0,
        bottom: 20,
        top: 20,
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(
              homeCardItemModel.imageLink,
              width: 120,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: -100,
            child: Container(
              height: 170,
              // width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff292d32).withOpacity(0.2),
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffF3C171),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff292d32).withOpacity(0.2),
                            offset: const Offset(0, 5),
                            blurRadius: 50,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4.0,
                        ),
                        child: Center(
                          child: Text(
                            homeCardItemModel.topic,
                            style: Get.textTheme.caption!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      homeCardItemModel.title,
                      style: Get.textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "by ${homeCardItemModel.organizer}",
                      style: Get.textTheme.caption!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\$${homeCardItemModel.amount} raised",
                      style: Get.textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
