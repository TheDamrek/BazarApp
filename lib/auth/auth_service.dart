import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;

  
  Future<AuthResponse> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    final response = await _supabase.auth.signUp(
      email: email,
      password: password,
    );

    final user = response.user;
    if (user != null) {
      
      await _supabase.from('UserProfiles').insert({
        'id': user.id,   
        'name': name,
      });
    }

    return response;
  }

  
  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    return await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );
  }

  
  Future<void> signOut() async {
    await _supabase.auth.signOut();
  }


  User? get currentUser => _supabase.auth.currentUser;
}
