part of containers;

class GenresContainer extends StatelessWidget {
  const GenresContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<String>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<String>>(
      converter: (Store<AppState> store) => store.state.genres.asList(),
      builder: builder,
    );
  }
}
