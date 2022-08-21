import 'package:onlinelearning/base/status.dart';

import 'actions.dart';
import 'states.dart';
import 'repo/repository.dart';

// abstract class AuthenticationMiddleware {
//   static ThunkActionWithExtraArgument<AuthenticationStateInterface,
//       AuthenticationRepositoryBase> setName() {
//     return (store, repository) async {
//       final searchResults = await repository.getUserName();
//
//       store.dispatch(UpdateUsernameAuthenticationAction(
//         (builder) => builder..name = searchResults,
//       ));
//     };
//   }
//
//   static ThunkActionWithExtraArgument<AuthenticationStateInterface,
//       AuthenticationRepositoryBase> checkHasLogin() {
//     return (store, repository) async {
//       try {
//         store.dispatch(SetStatusAuthenticationAction.create(
//           AuthenticationAction.checkLoginStatusKey,
//           Status.loading(),
//         ));
//         final userToken = await repository.getUserToken();
//         // check token is valid
//         if (userToken.isNotEmpty) {
//           // valid
//           repository.setInterceptor(userToken);
//           store.dispatch(SetUserTokenAuthenticationAction.create(userToken));
//           store.dispatch(SetStatusAuthenticationAction.create(
//             AuthenticationAction.checkLoginStatusKey,
//             Status.success(),
//           ));
//         } else {
//           store.dispatch(SetStatusAuthenticationAction.create(
//             AuthenticationAction.checkLoginStatusKey,
//             Status.error(),
//           ));
//         }
//       } catch (e) {
//         store.dispatch(SetStatusAuthenticationAction.create(
//           AuthenticationAction.checkLoginStatusKey,
//           Status.error(),
//         ));
//       }
//     };
//   }
//
//   static ThunkActionWithExtraArgument<AuthenticationStateInterface,
//           AuthenticationRepositoryBase>
//       loginWithUserNamePassword(String username, String password) {
//     return (store, repository) async {
//       // await login
//       await repository.setUserToken('hsdgfhdg');
//     };
//   }
// }
