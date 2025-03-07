import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_search_function/search_bloc.dart';
import 'package:flutter_bloc_search_function/search_word_page.dart';

void main() {
  return runApp(
    BlocProvider(
      create: (context) => SearchBloc(),
      child: MaterialApp(routes: {'/': (context) => SearchWordPage()}),
    ),
  );
}
