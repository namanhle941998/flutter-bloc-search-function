import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_search_function/search_event.dart';
import 'package:flutter_bloc_search_function/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(LoadedWords(words: words.toList())) {
    on<SearchWord>((event, emit) {
      List<String> searchedTitles = [];
      for (String title in words) {
        if (title.toLowerCase().contains(event.word.toLowerCase())) {
          searchedTitles.add(title);
        }
      }

      emit(LoadedWords(words: searchedTitles));
    });
  }

  static List<String> words = [
    'Flutter',
    "Google",
    'Flutter Guys',
    'Tutorial',
    "Bloc Course",
    "State Management",
    "Project",
  ];
}
