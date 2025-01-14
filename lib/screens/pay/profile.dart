import 'package:cenimabooking/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: seconderyColor,
        title: Text('+962 796258338'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.go(bottomNavPath);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'User Info',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User name: ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Phone number: ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Email: ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Saved Csrds',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 38, 58, 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.credit_card),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0303 **** **** 9375',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '06/24',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Add new card'))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Payment history',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(29, 38, 58, 1),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 140,
                        child: Image.asset('assets/images/theBatman.jpg'),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'The Batman',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        '6 April 2022, 14:40',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Text(
                        'MAx Cenimas',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

//
// class Profile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 375;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.80;
//     return SafeArea(
//         child: Scaffold(
//       body: SingleChildScrollView(
//           child: // Your screen content here
//               Container(
//         width: double.infinity,
//         child: Container(
//           // profileLoh (21:2392)
//           padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 390 * fem),
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Color(0xff1a2232),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 // fixedr1M (21:2441)
//                 margin:
//                     EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
//                 padding:
//                     EdgeInsets.fromLTRB(0 * fem, 17.17 * fem, 0 * fem, 0 * fem),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Color(0xb21e283d),
//                 ),
//                 child: ClipRect(
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(
//                       sigmaX: 20 * fem,
//                       sigmaY: 20 * fem,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           // topbarg2K (21:2443)
//                           padding: EdgeInsets.fromLTRB(
//                               16 * fem, 12 * fem, 16 * fem, 1 * fem),
//                           width: double.infinity,
//                           child: ClipRect(
//                             child: BackdropFilter(
//                               filter: ImageFilter.blur(
//                                 sigmaX: 20 * fem,
//                                 sigmaY: 20 * fem,
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // glypha7h (I21:2443;1:704)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 0 * fem, 11 * fem),
//                                     child: TextButton(
//                                       onPressed: () {
//                                         // انتقل إلى صفحة الملف الشخصي (PROFILE)
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 Profile_Empty(),
//                                           ),
//                                         );
//                                       },
//                                       style: TextButton.styleFrom(
//                                         padding: EdgeInsets.zero,
//                                       ),
//                                       child: Container(
//                                         width: 40 * fem,
//                                         height: 40 * fem,
//                                         child: Image.asset(
//                                           'assets/images/glyph-f75.png',
//                                           width: 40 * fem,
//                                           height: 40 * fem,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 65.5 * fem,
//                                   ),
//                                   Container(
//                                     // titlewrapetF (I21:2443;1:703)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 11 * fem, 0 * fem, 0 * fem),
//                                     height: 40 * fem,
//                                     child: Text(
//                                       '8 (707) 268 48 12',
//                                       textAlign: TextAlign.center,
//                                       style: TextStyle(
//                                         fontSize: 18 * ffem,
//                                         fontWeight: FontWeight.w700,
//                                         height: 1 * ffem / fem,
//                                         color: Color(0xffffffff),
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 20 * fem,
//                                   ),
//                                   Container(
//                                     // glyphKzP (I21:2443;1:709)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 0 * fem, 11 * fem),
//                                     child: TextButton(
//                                       onPressed: () {},
//                                       style: TextButton.styleFrom(
//                                         padding: EdgeInsets.zero,
//                                       ),
//                                       child: Container(
//                                         width: 60 * fem,
//                                         height: 40 * fem,
//                                         child: Image.asset(
//                                           'assets/images/glyph-S63.png',
//                                           width: 50 * fem,
//                                           height: 40 * fem,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 // contentmLb (21:2623)
//                 margin:
//                     EdgeInsets.fromLTRB(16 * fem, 0 * fem, 16 * fem, 0 * fem),
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       // sectionWZ5 (21:2607)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 0 * fem, 0 * fem, 24 * fem),
//                       width: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // savedcardsEEB (21:2525)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 0 * fem, 10 * fem),
//                             child: Text(
//                               'Saved cards',
//                               style: TextStyle(
//                                 fontSize: 16 * ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.2575 * ffem / fem,
//                                 color: Color(0xff637393),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // cardZ1Z (21:2615)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 0 * fem, 12 * fem),
//                             child: TextButton(
//                               onPressed: () {},
//                               style: TextButton.styleFrom(
//                                 padding: EdgeInsets.zero,
//                               ),
//                               child: Container(
//                                 padding: EdgeInsets.fromLTRB(14.67 * fem,
//                                     14.67 * fem, 18 * fem, 14.67 * fem),
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                   color: Color(0xff1e283d),
//                                   borderRadius: BorderRadius.circular(8 * fem),
//                                 ),
//                                 child: Row(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Container(
//                                       margin: EdgeInsets.fromLTRB(0 * fem,
//                                           0 * fem, 18.67 * fem, 0 * fem),
//                                       width: 34.67 * fem,
//                                       height: 26.67 * fem,
//                                       child: Image.asset(
//                                         'assets/images/visa.png',
//                                         width: 34.67 * fem,
//                                         height: 26.67 * fem,
//                                       ),
//                                     ),
//                                     Container(
//                                       // numBYj (I21:2615;21:2578)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 125 * fem, 0 * fem),
//                                       child: Text(
//                                         '4716 •••• •••• 5615',
//                                         style: TextStyle(
//                                           fontSize: 14 * ffem,
//                                           fontWeight: FontWeight.w500,
//                                           height: 1.2857142857 * ffem / fem,
//                                           color: Color(0xffffffff),
//                                         ),
//                                       ),
//                                     ),
//                                     Container(
//                                       // exp69u (I21:2615;21:2579)
//                                       margin: EdgeInsets.fromLTRB(
//                                           0 * fem, 0 * fem, 0 * fem, 0 * fem),
//                                       child: Text(
//                                         '06/24',
//                                         style: TextStyle(
//                                           fontSize: 14 * ffem,
//                                           fontWeight: FontWeight.w400,
//                                           height: 1.2857142857 * ffem / fem,
//                                           color: Color(0xff637393),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             // buttonCyd (21:2581)
//                             onPressed: () {},
//                             style: TextButton.styleFrom(
//                               padding: EdgeInsets.zero,
//                             ),
//                             child: Container(
//                               width: double.infinity,
//                               height: 40 * fem,
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0x196d9eff)),
//                                 borderRadius: BorderRadius.circular(8 * fem),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   'Add new card',
//                                   style: TextStyle(
//                                     fontSize: 14 * ffem,
//                                     fontWeight: FontWeight.w700,
//                                     height: 1.2575 * ffem / fem,
//                                     color: Color(0xffffffff),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       // sectionFBD (21:2608)
//                       width: double.infinity,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             // PaymentshistoryazB (21:2526)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 0 * fem, 10 * fem),
//                             child: Text(
//                               'Payments history',
//                               style: TextStyle(
//                                 fontSize: 16 * ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.2575 * ffem / fem,
//                                 color: Color(0xff637393),
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             // Paymentiab (21:2631)
//                             onPressed: () {},
//                             style: TextButton.styleFrom(
//                               padding: EdgeInsets.zero,
//                             ),
//                             child: Container(
//                               padding: EdgeInsets.fromLTRB(
//                                   12 * fem, 8 * fem, 16 * fem, 8 * fem),
//                               width: double.infinity,
//                               height: 104 * fem,
//                               decoration: BoxDecoration(
//                                 color: Color(0xff1e283d),
//                                 borderRadius: BorderRadius.circular(8 * fem),
//                               ),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Container(
//                                     // imagebPV (I21:2631;21:2612)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                                     width: 56 * fem,
//                                     height: 88 * fem,
//                                     child: ClipRRect(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                       child: Image.asset(
//                                         'assets/images/image.png',
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     // wrapiyu (I21:2631;21:2540)
//                                     margin: EdgeInsets.fromLTRB(
//                                         0 * fem, 12 * fem, 0 * fem, 12 * fem),
//                                     width: 243 * fem,
//                                     height: double.infinity,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                           BorderRadius.circular(8 * fem),
//                                     ),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           // titlecZV (I21:2631;21:2541)
//                                           'The Batman',
//                                           style: TextStyle(
//                                             fontSize: 16 * ffem,
//                                             fontWeight: FontWeight.w700,
//                                             height: 1.5 * ffem / fem,
//                                             color: Color(0xffffffff),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 4 * fem,
//                                         ),
//                                         Text(
//                                           // dateMX5 (I21:2631;21:2542)
//                                           '6 April 2022, 14:40',
//                                           style: TextStyle(
//                                             fontSize: 14 * ffem,
//                                             fontWeight: FontWeight.w400,
//                                             height: 1.1428571429 * ffem / fem,
//                                             color: Color(0xffffffff),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 4 * fem,
//                                         ),
//                                         Text(
//                                           // detailULo (I21:2631;21:2543)
//                                           'Eurasia Cinema7',
//                                           style: TextStyle(
//                                             fontSize: 14 * ffem,
//                                             fontWeight: FontWeight.w400,
//                                             height: 1.1428571429 * ffem / fem,
//                                             color: Color(0xff637393),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )),
//     ));
//   }
// }
