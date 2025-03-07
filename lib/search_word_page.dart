import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_search_function/search_bloc.dart';
import 'package:flutter_bloc_search_function/search_state.dart';

class SearchWordPage extends StatelessWidget {
  const SearchWordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PROJECT NUMBER 1'), centerTitle: true),
      body: Column(children: [_searchField(context), _words(context)]),
    );
  }

  Widget _searchField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search...',
          contentPadding: const EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }

  Widget _words(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state is LoadedWords
            ? ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return Text(
                  index.toString(),
                  style: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                );
              },
              separatorBuilder:
                  (context, index) =>
                      const Divider(color: Colors.grey, thickness: 0.2),
              itemCount: state.words.length,
            )
            : Container();
      },
    );
  }
}
