import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../style/style.dart';
import '../../widget/app_bar.dart';
import '../../widget/custom_check_box.dart';
import '../../widget/donation_widget.dart';

import 'package:flutter/material.dart';
import 'package:supportus_flutter_app/widget/app_bar.dart';
import 'donate_completion.dart';
import 'package:bootpay_api/bootpay_api.dart';
import 'package:bootpay_api/model/payload.dart';
import 'package:bootpay_api/model/extra.dart';
import 'package:bootpay_api/model/user.dart';
import 'package:bootpay_api/model/item.dart';

class DonatePayment extends StatefulWidget {
  const DonatePayment({Key? key}) : super(key: key);

  @override
  State<DonatePayment> createState() => _DonatePaymentState();
}

class _DonatePaymentState extends State<DonatePayment> {
  late ScrollController _scrollController;

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();
  bool check = false;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: baseAppBar('νμνκΈ°'),
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15.w, top: 20.h, right: 15.w, bottom: 20.h),
                  child: donationInfoBox(context),
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(15.h, 22.w, 15.h, 17.w),
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "μ ννμΈ",
                          style: TextStyle(
                              color:  const Color(0xff222222),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.sp
                          ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              color: Color(0xffd0d0d0)
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "νμκΈ λͺ©μ ",
                                style: TextStyle(
                                    color:  const Color(0xff222222),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "NotoSansKR",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.sp
                                ),
                            ),
                            Text(
                                "νκ΅ μ¬κ±΄λΉ",
                                style: TextStyle(
                                    color:  const Color(0xff222222),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "NotoSansKR",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.sp
                                ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              color: Color(0xfff8f8f8)
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "νμ λ°©μ",
                              style: TextStyle(
                                  color:  const Color(0xff222222),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.sp
                              ),
                            ),
                            Text(
                              "1ν νμ",
                              style: TextStyle(
                                  color:  const Color(0xff222222),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.sp
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              color: Color(0xfff8f8f8)
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 18.h, bottom: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "νμ κΈμ‘",
                              style: TextStyle(
                                  color:  const Color(0xff222222),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.sp
                              ),
                            ),
                            Text(
                              "1λ§μ",
                              style: TextStyle(
                                  color:  const Color(0xff222222),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.sp
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              color: Color(0xfff8f8f8)
                          )
                      ),
                      SizedBox(height: 15.h,),
                      Text(
                          "νμμ²μκ² λ¨κΈ°κ³  μΆμλ§",
                          style: TextStyle(
                              color:  const Color(0xff222222),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.sp
                          ),
                      ),
                      SizedBox(height: 7.h,),
                      Container(
                          height: 100.h,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(5)
                              ),
                              border: Border.all(
                                  color: const Color(0xfff6f6f6),
                                  width: 1
                              ),
                              color: const Color(0xfffdfdfd)
                          ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 9.w, top: 15.h, right: 9.w, bottom: 15.h),
                          child: Text(
                              "",
                          style: TextStyle(
                              color:  const Color(0xff313131),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansKR",
                            fontStyle:  FontStyle.normal,
                            fontSize: 13.sp
                        ),
                            maxLines: 6,
                      ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 9.h,),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(15.h, 22.w, 15.h, 20.w),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "μν¬ν°μ λ³΄",
                        style: TextStyle(
                            color:  const Color(0xff222222),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSansKR",
                            fontStyle:  FontStyle.normal,
                            fontSize: 16.sp
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              color: Color(0xffd0d0d0)
                          )
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 14.h, bottom: 5.h),
                        child: Text(
                            "μ΄λ¦ *",
                            style: TextStyle(
                                color:  const Color(0xff000000),
                                fontWeight: FontWeight.w500,
                                fontFamily: "NotoSansKR",
                                fontStyle:  FontStyle.normal,
                                fontSize: 13.sp
                            ),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                        child: TextFormField(
                          cursorColor: const Color(0xffe2eef0),
                          style: getTextFieldFontStyle(),
                          controller: nameController,
                          decoration: getInputDeco('μ΄λ¦ μλ ₯'),
                          onTap: (){
                            _scrollController.animateTo(480.h,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 14.h, bottom: 5.h),
                        child: Text(
                          "μ΄λ©μΌ *",
                          style: TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.sp
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                        child: TextFormField(
                          cursorColor: const Color(0xffe2eef0),
                          style: getTextFieldFontStyle(),
                          controller: emailController,
                          decoration: getInputDeco('μ΄λ©μΌ μλ ₯'),
                          keyboardType: TextInputType.emailAddress,
                          onTap: (){
                            _scrollController.animateTo(525.h,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only( top: 14.h, bottom: 5.h),
                        child: Text(
                          "ν΄λν°λ²νΈ *",
                          style: TextStyle(
                              color:  const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.sp
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                        child: TextFormField(
                          cursorColor: const Color(0xffe2eef0),
                          style: getTextFieldFontStyle(),
                          controller: mobileController,
                          decoration: getInputDeco("'-'μμ΄ μ°λ½μ²λ₯Ό μλ ₯ν΄μ£ΌμΈμ."),
                          keyboardType: TextInputType.phone,
                          onTap: (){
                            _scrollController.animateTo(570.h,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                        ),
                      ),
                      SizedBox(height: 27.h,),
                      Text(
                          "νμκΈ κ²°μ  κΈμ‘",
                          style: TextStyle(
                              color:  const Color(0xff222222),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.sp
                          ),
                      ),
                      SizedBox(height: 6.h,),
                      Container(
                        padding: EdgeInsetsDirectional.fromSTEB(11.w, 9.h, 14.w, 9.h),
                          height: 67.h,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(5)
                              ),
                              border: Border.all(
                                  color: const Color(0xfff6f6f6),
                                  width: 1
                              ),
                              color: const Color(0xfffdfdfd)
                          ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "νμκΈ κ²°μ  κΈμ‘",
                                    style: TextStyle(
                                        color:  const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "NotoSansKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 13.sp
                                    ),
                                ),
                                Text(
                                    "10,000μ",
                                    style: TextStyle(
                                        color:  const Color(0xff000000),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "NotoSansKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 13.sp
                                    ),
                                )
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "μ΅μ’κΈμ‘",
                                    style: TextStyle(
                                        color:  const Color(0xfff3755e),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "NotoSansKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 13.sp
                                    ),
                                ),
                                Text(
                                    "1,0000μ",
                                    style: TextStyle(
                                        color:  const Color(0xfff3755e),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "NotoSansKR",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 13.sp
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
                SizedBox(height: 8.h,),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(15.h, 11.w, 15.h, 20.w),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "κ²°μ μλ¨ μ ν",
                          style: TextStyle(
                              color:  const Color(0xff222222),
                              fontWeight: FontWeight.w500,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 16.sp
                          ),
                      ),
                      SizedBox(height: 6.h,),
                      SizedBox(
                        height: 40.h,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('μ μ©μΉ΄λ');
                                },
                                child: Text(
                                  "μ μ©μΉ΄λ",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            ),
                            SizedBox(width: 7.w,),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('μ€μκ° κ³μ’μ΄μ²΄');

                                },
                                child: Text(
                                  "μ€μκ° κ³μ’μ΄μ²΄",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      SizedBox(
                        height: 40.h,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('κ°μκ³μ’(λ¬΄ν΅μ₯μκΈ)');

                                },
                                child: Text(
                                  "κ°μκ³μ’(λ¬΄ν΅μ₯μκΈ)",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            ),
                            SizedBox(width: 7.w,),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('μμ€ν¬λ‘(κ°μκ³μ’)');

                                },
                                child: Text(
                                  "μμ€ν¬λ‘(κ°μκ³μ’)",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.h,),
                      SizedBox(
                        height: 40.h,
                        child: Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('μΉ΄μΉ΄μ€νμ΄');

                                },
                                child: Text(
                                  "μΉ΄μΉ΄μ€νμ΄",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            ),
                            SizedBox(width: 7.w,),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('λ€μ΄λ²νμ΄');
                                },
                                child: Text(
                                  "λ€μ΄λ²νμ΄",
                                  style: TextStyle(
                                      color:  const Color(0xff4b4b4b),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "NotoSansKR",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 13.sp
                                  ),
                                ),
                                style: paymentButtonStyle(const Color(0xfffafafa)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(15.h, 11.w, 15.h, 20.w),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "μ΄μ©μ½κ΄ λμ",
                          style: TextStyle(
                              color:  const Color(0xff383838),
                              fontWeight: FontWeight.w400,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.sp
                          ),
                      ),
                      SizedBox(height: 6.h,),
                      RichText(
                          text: TextSpan(
                              children: [
                          TextSpan(
                              style: TextStyle(
                              color:  const Color(0xff545454),
                              fontWeight: FontWeight.w300,
                              fontFamily: "NotoSansKR",
                              fontStyle:  FontStyle.normal,
                              fontSize: 13.sp
                          ),
                              text: "κ΅¬λ§€λμ λ° κ²°μ λν μλΉμ€ μ΄μ©μ½κ΄ λ±μ λͺ¨λ λμνμ­λκΉ?")
                              ])),
                      GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: (){
                          print('μ½κ΄λ³΄κΈ°');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.h, right: 8.w, bottom: 8.w),
                          child: Text(
                              'μ½κ΄λ³΄κΈ°',
                              style : TextStyle(
                                  color:  const Color(0xffff7045),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "NotoSansKR",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 13.sp,
                                  decoration: TextDecoration.underline,
                              ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            check = !check;
                          });
                        },
                        child: Row(
                          children: [
                            CustomCheckBox(
                              checkBoxSize: 15,
                              borderRadius: 10,
                              shouldShowBorder: true,
                              borderWidth: 1,
                              borderColor: const Color(0xfff3755e),
                              checkedFillColor: const Color(0xfff3755e),
                              value: check,
                              onChanged: (val) {
                                setState(() {
                                  check = val;
                                });
                              },
                            ),
                            SizedBox(width: 3.w,),
                            Text(
                                "λͺ¨λ λμν©λλ€.",
                                style: TextStyle(
                                    color:  const Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "NotoSansKR",
                                    fontStyle:  FontStyle.normal,
                                    fontSize: 13.sp
                                ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
      height: 60.h,
      child: ElevatedButton(
        onPressed: () {
          goBootpayRequest(context);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(const Color(
              0xff2938ff)),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Text(
            "νμκΈ κ²°μ νκΈ°",
            style: TextStyle(
                color:  const Color(0xffffffff),
                fontWeight: FontWeight.w400,
                fontFamily: "NotoSansKR",
                fontStyle:  FontStyle.normal,
                fontSize: 14.sp
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
    );
  }
}

void goBootpayRequest(BuildContext context) async {
  Payload payload = Payload();
  payload.androidApplicationId = '5b8f6a4d396fa665fdc2b5e8';
  payload.iosApplicationId = '5b8f6a4d396fa665fdc2b5e9';

  payload.pg = 'nicepay';
  payload.method = 'card';
//  payload.methods = ['card', 'phone', 'vbank', 'bank'];
  payload.name = 'testUser';
  payload.price = 10000.0;
  payload.orderId = DateTime.now().millisecondsSinceEpoch.toString();
//    payload.params = {
//      "callbackParam1" : "value12",
//      "callbackParam2" : "value34",
//      "callbackParam3" : "value56",
//      "callbackParam4" : "value78",
//    };

  User user = User();
  user.username = "μ¬μ©μ μ΄λ¦";
  user.email = "user1234@gmail.com";
  user.area = "μμΈ";
  user.phone = "010-1234-4567";

  Extra extra = Extra();
  extra.appScheme = 'bootpaySample';

  Item item1 = Item();
  item1.itemName = "κΈ°λΆκΈ1"; // μ£Όλ¬Έμ λ³΄μ λ΄κΈΈ μνλͺ
  item1.qty = 1; // ν΄λΉ μνμ μ£Όλ¬Έ μλ
  item1.unique = "ITEM_CODE_DONATE1"; // ν΄λΉ μνμ κ³ μ  ν€
  item1.price = 30000; // μνμ κ°κ²©

  Item item2 = Item();
  item2.itemName = "κΈ°λΆκΈ2"; // μ£Όλ¬Έμ λ³΄μ λ΄κΈΈ μνλͺ
  item2.qty = 1; // ν΄λΉ μνμ μ£Όλ¬Έ μλ
  item2.unique = "ITEM_CODE_DONATE2"; // ν΄λΉ μνμ κ³ μ  ν€
  item2.price = 20000; // μνμ κ°κ²©
  List<Item> itemList = [item1, item2];

  BootpayApi.request(
    context,
    payload,
    extra: extra,
    user: user,
    items: itemList,
    onDone: (String? json) {
      print('onDone: $json');
    },
    onReady: (String? json) {
      //flutterλ κ°μκ³μ’κ° λ°κΈλμμλ  onReadyκ° νΈμΆλμ§ μλλ€. onDoneμμ μ²λ¦¬ν΄μ£Όμ΄μΌ νλ€.
      print('onReady: $json');
    },
    onCancel: (String? json) {
      print('onCancel: $json');
    },
    onError: (String? json) {
      print('onError: $json');
    },
  );
}