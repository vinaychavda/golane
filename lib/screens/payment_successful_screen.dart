import 'package:flutter/material.dart';
import '../common/color_constant.dart';

class PaymentSuccessfulScreen extends StatefulWidget {
  const PaymentSuccessfulScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessfulScreen> createState() =>
      _PaymentSuccessfulScreenState();
}

class _PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
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
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: const Center(
              child: Text(
                "Your Payment is successfully completed\n we will send you train ticket on your E-mail.",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
