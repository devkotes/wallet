import 'package:finance_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTransactionPage extends StatefulWidget {
  final List<Map<String, dynamic>> listTransaction;

  DetailTransactionPage(this.listTransaction);

  @override
  _DetailTransactionPageState createState() => _DetailTransactionPageState();
}

class _DetailTransactionPageState extends State<DetailTransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned.fill(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      child: SvgPicture.asset('assets/bg_detail.svg')))),
          Container(
            margin: EdgeInsets.only(top: 32),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Center(
                                  child:
                                      SvgPicture.asset('assets/ic_back.svg'))),
                        ),
                        Text('History',
                            style: GoogleFonts.montserrat(
                                fontSize: 20, fontWeight: FontWeight.w500)),
                        Container()
                      ],
                    )),
                SizedBox(
                  height: 42,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Today',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Text('20 March 2021',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14, color: Color(0xffCFCFDA)))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Column(
                                  children: widget.listTransaction
                                      .map(
                                        (e) => Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    (e['isPhoto'])
                                                        ? Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 16),
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
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 16),
                                                            height: 40,
                                                            width: 40,
                                                            child: SvgPicture
                                                                .asset(
                                                                    e['image']),
                                                          ),
                                                    Container(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            e['name'],
                                                            style: GoogleFonts
                                                                .montserrat(
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
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      e['amount'],
                                                      style: GoogleFonts
                                                          .montserrat(
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
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Yesterday',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Text('19 March 2021',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14, color: Color(0xffCFCFDA)))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            children: [
                              Column(
                                  children: widget.listTransaction
                                      .map(
                                        (e) => Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    (e['isPhoto'])
                                                        ? Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 16),
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
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 16),
                                                            height: 40,
                                                            width: 40,
                                                            child: SvgPicture
                                                                .asset(
                                                                    e['image']),
                                                          ),
                                                    Container(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            e['name'],
                                                            style: GoogleFonts
                                                                .montserrat(
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
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      e['amount'],
                                                      style: GoogleFonts
                                                          .montserrat(
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
