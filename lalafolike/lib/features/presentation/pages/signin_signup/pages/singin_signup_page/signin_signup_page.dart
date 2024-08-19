import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/data/user_registration/google_sign_in.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_in_view.dart';
import 'package:lalafolike/features/presentation/pages/signin_signup/pages/singin_signup_page/widget/sign_up_view.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class SignInSignUpPage extends StatefulWidget {
  const SignInSignUpPage({super.key});

  @override
  State<SignInSignUpPage> createState() => _SignInSignUpPageState();
}

class _SignInSignUpPageState extends State<SignInSignUpPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  User? _user;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  Future<void> _checkIfLoggedIn() async {
    User? user = _auth.currentUser;
    if (user != null) {
      setState(() {
        _user = user;
      });
    }
  }

  Future<void> _signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser == null) {
      // Handle error: User canceled the sign-in flow
      return;
    }

    // Obtain auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    try {
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      setState(() {
        _user = userCredential.user;
      });
    } on FirebaseAuthException catch (e) {
      // Handle sign-in errors
      print('Error signing in with Google: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: getThemeModeColor.brightnessColor(
          context,
          lightColor: ColorConstants.white,
          darkColor: ColorConstants.darkbgcolor,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              forceMaterialTransparency: true,
              pinned: true,
              floating: true,
              snap: true,
              title: AppText(
                title: 'Начнем!',
                textType: TextType.body,
                color: getThemeModeColor.brighnessTheme(context),
              ),
              centerTitle: true,
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: IconButton(
                        onPressed: () {
                          context.router.push(const SettingRoute());
                        },
                        icon: const Icon(
                          Icons.settings_outlined,
                        ),
                      )),
                ),
              ],
              bottom: TabBar(
                onTap: (index) => AutoRouter.of(context).pop(),
                dividerColor: Colors.transparent,
                indicatorColor: ColorConstants.green,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: ColorConstants.green,
                labelStyle: const TextStyle(fontSize: 20),
                tabs: const [
                  Tab(text: 'Войти'),
                  Tab(text: 'Регистрация'),
                ],
              ),
            ),
          ],
          body: Container(
            color: getThemeModeColor.brightnessColor(
              context,
              lightColor: ColorConstants.white,
              darkColor: ColorConstants.darkbgcolor,
            ),
            child: const TabBarView(
              children: [
                SignInView(),
                SignUpView(
                  onTap: signInWithGoogle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
