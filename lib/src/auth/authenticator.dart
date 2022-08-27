import 'package:supabase_flutter/supabase_flutter.dart';

class Authenticator {
  final supaClient = Supabase.instance.client;

  // email-password sign up
  Future<GotrueSessionResponse> createNewUser(
      String email, String password) async {
    final res = await supaClient.auth.signUp(email, password);

    return res;
  }

  // email-password sign in
  Future<GotrueSessionResponse> signInExistingUser(
      String email, String? password) async {
    final res = await supaClient.auth.signIn(
      email: email,
      password: password,
    );

    return res;
  }

  // sends user a reset password email, redirectTo - screen user comes back to
  Future<GotrueJsonResponse> resetExistingUserPassword(
      String email, String? urlPath) async {
    final res = await supaClient.auth.api.resetPasswordForEmail(
      email,
      options: AuthOptions(
        redirectTo: urlPath,
      ),
    );

    return res;
  }

// email magic link sign in
  Future<GotrueSessionResponse> createNewPasswordlessUser(String email) async {
    final res = await supaClient.auth.signIn(
      email: email,
    );

    return res;
  }

  Future<GotrueUserResponse> updateUserPassword(
      String accessToken, String password) async {
    final res = await supaClient.auth.api.updateUser(
      accessToken,
      UserAttributes(password: password),
    );

    if (res.error == null) {
      final resi = await Supabase.instance.client.auth
          .update(UserAttributes(data: {'password': password}));
    }

    return res;
  }

  // sign out active user
  Future<GotrueResponse> signOutActiveUser() async {
    final res = await supaClient.auth.signOut();

    return res;
  }

  // get active user
  User? getActiveUser() {
    final user = supaClient.auth.user();

    return user;
  }
}
