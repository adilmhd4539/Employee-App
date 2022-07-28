import 'package:flutter/material.dart';


showErrormessage(String error, BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(error),
        const Icon(Icons.error,color: Colors.red,)
      ],
    )));

showSucessSnakBar(String successMessage,BuildContext context)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(successMessage),
        const Icon(Icons.done,color: Colors.green,)
      ],
    )));   