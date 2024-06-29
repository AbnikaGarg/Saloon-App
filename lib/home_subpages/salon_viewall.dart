import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:salon/features/booking_features/service_booking_page.dart';

import 'package:salon/features/home_page.dart';
import 'package:salon/home_subpages/salon_details.dart';
import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_items_list.dart';

import 'model/saloon_list_response.dart';

class SalonViewAllPage extends StatelessWidget {
  final SaloonListResponse saloonList;
  const SalonViewAllPage({super.key, required this.saloonList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/onboarding1.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 22),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(50))),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 26,
                                  color: Colors.white,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  height: 26,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black87,
                                            fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                        color: Colors.black87,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: const Icon(
                              Icons.filter_list_alt,
                              size: 26,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 36),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Salon, Services, Barber',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        Icon(Icons.search, color: AppColors.appbackgroundColor)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: 0.7,
            
            builder:
                (BuildContext context, ScrollController myScrollController) {
              return Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Container(
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            const Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Select a Salon',
                                  style: TextStyle(
                                      color: AppColors.appbackgroundColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: ListView.builder(
                                
                                  // physics:
                                  //     const AlwaysScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                 // primary: false,
                                  itemCount:
                                      saloonList.data!.salonName!.length,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (context, index) {
                                    var saloon =
                                        saloonList.data!.salonName![index];
                                    return InkWell(
                                      onTap: () {
                                        //SalonView
                                      
                         
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SalonView(),
                                ),
                              );
                            
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20),
                                        child: Column(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 120,
                                                  height: 90,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.grey,
                                                    image: DecorationImage(
                                                        image: AssetImage(index <
                                                                6
                                                            ? salonListItem[
                                                                    index]
                                                                .imageUrl
                                                            : salonListItem[
                                                                    salonListItem
                                                                            .length -
                                                                        1]
                                                                .imageUrl),
                                                        fit: BoxFit.fill),
                                                  ),
                                                ),
                                                const SizedBox(width: 12),
                                                Flexible(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        saloon.name!,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: AppColors
                                                              .appbackgroundColor,
                                                        ),
                                                      ),
                                                      Text(
                                                        saloon.address!,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .appbackgroundColor,
                                                        ),
                                                        maxLines: 1,
                                                        overflow: TextOverflow.ellipsis,
                                                      ),
                                                      const SizedBox(height:6),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          RatingBar.builder(
                                                            initialRating: 4,
                                                            minRating: 1,
                                                            direction:
                                                                Axis.horizontal,
                                                            itemCount: 5,
                                                            itemSize: 16,
                                                            itemPadding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 4),
                                                            itemBuilder:
                                                                (context,
                                                                        index) =>
                                                                    const Icon(
                                                              Icons.star,
                                                              color: AppColors
                                                                  .appbackgroundColor,
                                                            ),
                                                            onRatingUpdate:
                                                                (index) {},
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const BookingServicePage(),
                                                                ),
                                                              );
                                                            },
                                                            child: Container(
                                                              // // padding: const EdgeInsets.all(32),
                                                              // margin: const EdgeInsets.symmetric(horizontal: 30),
                                                              height: 20,
                                                              width: 50,
                                                              decoration: const BoxDecoration(
                                                                  color: AppColors
                                                                      .appbackgroundColor,
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              15))),
                                                              child:
                                                                  const Center(
                                                                      child:
                                                                          Text(
                                                                'Book',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              )),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 2),
                                                      const Text(
                                                        "09:00 am - 09:00 am",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: AppColors
                                                                .appbackgroundColor),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4),
                                                  height: 90,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      // Row(
                                                      //   children: [
                                                      //     const Icon(
                                                      //       Icons
                                                      //           .location_on,
                                                      //       size: 12,
                                                      //       color: AppColors
                                                      //           .appbackgroundColor,
                                                      //     ),
                                                      //     const SizedBox(
                                                      //       width: 2,
                                                      //     ),
                                                      //     Text(
                                                      //       luxuryListItem[
                                                      //               index]
                                                      //           .distance,
                                                      //       style:
                                                      //           const TextStyle(
                                                      //         fontSize: 14,
                                                      //         fontWeight:
                                                      //             FontWeight
                                                      //                 .w500,
                                                      //         color: AppColors
                                                      //             .appbackgroundColor,
                                                      //       ),
                                                      //     ),
                                                      //   ],
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
