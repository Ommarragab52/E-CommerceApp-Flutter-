class HomeLayoutState {
  int? currentIndex;

  HomeLayoutState._({this.currentIndex});

  static HomeLayoutState initial = HomeLayoutState._(
    currentIndex: 0,
  );

  HomeLayoutState copyWith({int? currentIndex}) {
    return HomeLayoutState._(currentIndex: currentIndex ?? this.currentIndex);
  }

  @override
  String toString() {
    return 'CurrentIndex => $currentIndex';
  }
}
