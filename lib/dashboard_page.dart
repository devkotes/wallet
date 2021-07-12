import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_transaction_page.dart';
import 'theme.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Map<String, dynamic>> data = [
    {'icon': 'assets/ic_send.svg', 'name': 'Send'},
    {'icon': 'assets/ic_wallet.svg', 'name': 'Top Up'},
    {'icon': 'assets/ic_upload.svg', 'name': 'Pay'},
    {'icon': 'assets/ic_more.svg', 'name': 'More'},
  ];

  List<Map<String, dynamic>> listTransaction = [
    {
      'image': 'assets/paypal.svg',
      'name': 'Paypal',
      'isPhoto': false,
      'transaction_dtm': '4 March, 8.24AM',
      'amount': "-\$20.3",
      'isIncome': false,
      'desc': 'Transfer'
    },
    {
      'image': 'assets/netflix.svg',
      'name': 'Netflix',
      'isPhoto': false,
      'transaction_dtm': '23 February, 8.24AM',
      'amount': "-\$25",
      'isIncome': false,
      'desc': 'Subscribtion'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1533227268428-f9ed0900fb3b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=879&q=80',
      'name': 'Dadang Casper',
      'isPhoto': true,
      'transaction_dtm': '20 January, 3.24AM',
      'amount': "\$100",
      'isIncome': true,
      'desc': 'Bank Transfer'
    },
    {
      'image':
          'https://images.unsplash.com/photo-1583760919595-270997d7726a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=701&q=80',
      'name': 'Kyunzi Permana',
      'isPhoto': true,
      'transaction_dtm': '1 January, 3.24AM',
      'amount': "-\$50",
      'isIncome': false,
      'desc': 'Bank Transfer'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xff732E84),
          ),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      child: SvgPicture.asset('assets/background.svg')))),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.unsplash.com/photo-1565464027194-7957a2295fb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'))),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome Back',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'Devkotes',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                      Container(
                          child: Stack(
                        children: [
                          SvgPicture.asset('assets/ic_notif.svg'),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffF65E5F)),
                            ),
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Column(
                    children: [
                      Text(
                        'Your Balance',
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      Text(
                        "\$200.12",
                        style: GoogleFonts.montserrat(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: data
                          .map((e) => Container(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          color: Color(0xffF3F4F6)
                                              .withOpacity(0.3)),
                                      child: Center(
                                        child: SizedBox(
                                          height: 16,
                                          width: 16,
                                          child: SvgPicture.asset(
                                            e['icon'],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      e['name'],
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ))
                          .toList()),
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32))),
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Last Transaction',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: textBlackColor),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                DetailTransactionPage(
                                                    listTransaction)));
                                  },
                                  child: Text('See All',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: primaryColor)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Column(
                                      children: listTransaction
                                          .map(
                                            (e) => Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 12),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        (e['isPhoto'])
                                                            ? Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            16),
                                                                height: 40,
                                                                width: 40,
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    image: DecorationImage(
                                                                        image: NetworkImage(e[
                                                                            'image']),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                              )
                                                            : Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right:
                                                                            16),
                                                                height: 40,
                                                                width: 40,
                                                                child: SvgPicture
                                                                    .asset(e[
                                                                        'image']),
                                                              ),
                                                        Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                e['name'],
                                                                style: GoogleFonts.montserrat(
                                                                    fontSize:
                                                                        16,
                                                                    color:
                                                                        textBlackColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              ),
                                                              SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text(
                                                                e['transaction_dtm'],
                                                                style: GoogleFonts
                                                                    .montserrat(
                                                                        fontSize:
                                                                            12,
                                                                        color: Color(
                                                                            0xffCFCFDA)),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          e['amount'],
                                                          style: GoogleFonts.montserrat(
                                                              fontSize: 16,
                                                              color: (e[
                                                                      'isIncome'])
                                                                  ? greenColor
                                                                  : redColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 2,
                                                        ),
                                                        Text(
                                                          e['desc'],
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  fontSize: 12,
                                                                  color: Color(
                                                                      0xffCFCFDA)),
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                          .toList()),
                                  SizedBox(
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              height: 52,
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Center(
                      child: SvgPicture.asset('assets/ic_home.svg'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Center(
                      child: SvgPicture.asset('assets/ic_graph.svg'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 25,
                    child: Center(
                      child: SvgPicture.asset('assets/ic_ticket.svg'),
                    ),
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1565464027194-7957a2295fb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80'))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
