import 'actions.dart';
import 'states.dart';
import 'repo/repository.dart';
import 'package:redux/redux.dart';

abstract class AuthenticationMiddleware {
  static void setName(Store<AuthenticationStateInterface> store,
      AuthenticationRepositoryBase repository) async {
    final searchResults = await repository.getUserName();

    store.dispatch(UpdateUsernameAuthenticationAction(
      (builder) => builder..name = searchResults,
    ));
  }
}
