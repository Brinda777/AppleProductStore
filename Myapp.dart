// MyApp.dart

import 'SearchBar.dart';

class MyApp {
  SearchBar searchBar;

  void init() {
    searchBar = SearchBar();
  }

  void onSearchButtonPressed(String keyword) {
    searchBar.onSearch(keyword);
  }
}

void main() {
  MyApp myApp = MyApp();
  myApp.init();

  // Trigger search on button press
  myApp.onSearchButtonPressed("keyword");
}
