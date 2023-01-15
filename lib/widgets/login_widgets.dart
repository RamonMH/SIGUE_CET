import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const TextInputDecoration = InputDecoration(
    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9E2A2B), width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF386641), width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9E2A2B), width: 2),
    ));
