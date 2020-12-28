import 'package:flutter/widgets.dart';
import 'package:flutter_homework/05/models/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/src/store.dart';

class QualityContainer extends StatelessWidget {
  const QualityContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<String> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
      converter: (Store<AppState> store) => store.state.quality,
      builder: builder,
    );
  }
}
