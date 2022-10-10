import 'package:flutter/material.dart';
import '../common/image_constant.dart';
import '../common/color_constant.dart';

import 'package:golane_technical_round/screens/payment_successful_screen.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  void onPaymentClick() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const PaymentSuccessfulScreen()));
  }

  final _formKey = GlobalKey<FormState>();
  final _emailIdTextEditingController = TextEditingController();
  final _cardInformation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.bg), fit: BoxFit.fill)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstant.gray1,
                        ),
                        child: const Center(
                          child: Icon(
                            size: 70,
                            Icons.train,
                            color: ColorConstant.gray2,
                          ),
                        ),
                      ),
                       const Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Center(
                          child: Text(
                            "Yor are on your final step to book your ticket!!",
                            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        margin: EdgeInsets.only(top: 20),
                        width: 130,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 8),
                        child: TextFormField(
                          controller: _emailIdTextEditingController,
                          validator: (email) {
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(email!)) {
                              return 'Please Enter Valid Email';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(30, 20, 30, 20),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            hintText: 'Your e-mail',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 40),
                        child: TextFormField(
                          controller: _cardInformation,
                          validator: (value) {
                            if (value.toString().length < 10) {
                              return 'Enter Valid Card Number';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(30, 20, 30, 20),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 3),
                            ),
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            hintText: 'Enter Card Number',
                          ),
                        ),
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  ColorConstant.redLight),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(
                                          color: ColorConstant.redLight)))),
                          onPressed: (){
                            if (_formKey.currentState!.validate()) {
                             onPaymentClick();
                            }
                          },
                          child: Text("Pay 45 Euro".toUpperCase(),
                              style: const TextStyle(fontSize: 14)))
                    ],
                  ),
                ),
              ),
            )));
  }
}
