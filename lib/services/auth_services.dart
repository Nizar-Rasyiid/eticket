part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // ignore: missing_return
  static Future<SignInSignUpResult> signUp(String email, String password,
  String name, List<String> selectedGenres, String selectedLanguage) async {
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

      User user = result.user.convertToUser(
        name: name,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage
      );

      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user);

    }catch (e) {}
  }
}

class SignInSignUpResult {
  final User user;
  final String message;
  SignInSignUpResult({this.user, this.message});
}