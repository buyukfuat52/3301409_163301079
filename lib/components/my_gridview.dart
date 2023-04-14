import 'package:flutter/material.dart';

// ignore: use_function_type_syntax_for_parameters
GridView myGridView({required Card yapi(index), required List dizi}) {
  return GridView.builder(
    gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) {
      return yapi(index);
    },
    itemCount: dizi.length,
  );
}
