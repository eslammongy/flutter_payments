/* import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_payments/services/payment.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:http/http.dart' as http;

class StripeServices {
  static String apiBaseUrl = "https://api.stripe.com/v1/";
  static String paymentUrl = "${StripeServices.apiBaseUrl}/payment_intents";
  static Uri parsedPaymentUrl = Uri.parse(paymentUrl);
  //get ignore
  static String secretKey =
      "sk_test_51LU62vLJi0ZRBzhh3LjoUtdQmmkgAaNpSetCtGFcWb39ELSAaErevuD07hCvLWDedOIw2LGcBnNkUoFriMwe2yZ300FvdFTOv6";

  static Map<String, String> headers = {
    "Authorization": "Bearer ${StripeServices.secretKey}",
    "Content-Type": 'application/x-www-form-urlencoded'
  };

  static init() {
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            "pk_test_51LU62vLJi0ZRBzhhTwBbEmKdObNtz5RqXLGkXFDQoBniEiG0OxeaQiukMVez186KzadTLSakhIrNLMXlNhUN3DZG00m9JlZu4m",
        androidPayMode: 'test',
        merchantId: 'test'));
  }

  static Future<Map<String, dynamic>> createPaymentIntent(
      {required String amount, required String currency}) async {
    Map<String, dynamic> body = {'amount': amount, 'currency': currency};

    try {
      var response =
          await http.post(parsedPaymentUrl, headers: headers, body: body);

      return jsonDecode(response.body);
    } catch (error) {
      rethrow;
    }
  }

  static Future<StripeTransactionResponse> createPaymentNow(
      {required String amount, required String currency}) async {
    try {
      var paymentMethod = await StripePayment.paymentRequestWithCardForm(
          CardFormPaymentRequest());
      var paymentIntent = await StripeServices.createPaymentIntent(
          amount: amount, currency: currency);

      var response = await StripePayment.confirmPaymentIntent(PaymentIntent(
          clientSecret: paymentIntent["client_secret"],
          paymentMethodId: paymentMethod.id));

      if (response.status == 'succeeded') {
        return StripeTransactionResponse(
            message: 'Transaction failed', success: true);
      } else {
        return StripeTransactionResponse(
            message: 'Transactions Success', success: false);
      }
    } catch (error) {
      return StripeServices.getErrorAndAnalyze(error);
    }
  }

  static getErrorAndAnalyze(err) {
    String message = 'Something went wrong';
    if (err.code == 'cancelled') {
      message = 'Transaction canceled';
    }
    return StripeTransactionResponse(message: message, success: false);
  }
}
 */