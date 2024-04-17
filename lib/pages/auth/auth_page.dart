import 'package:taxiapp/pages/auth/auth_state.dart';
import 'package:taxiapp/pages/auth/widgets/auth_button.dart';
import 'package:taxiapp/pages/auth/widgets/otp_page.dart';
import 'package:taxiapp/pages/auth/widgets/phone_page.dart';
import 'package:taxiapp/pages/auth/widgets/set_up_account.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  final int page;
  final String? uid;
  const AuthPage({
    super.key,
    this.page = 0,
    this.uid,
  });

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AuthState>(context);
    final screenSize = MediaQuery.of(context).size;
    return Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: screenSize.height,
            width: screenSize.width,
            color: Colors.white,
            child: PageView(
              controller: state.controller,
              onPageChanged: state.onPageChanged,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                PhonePage(),
                OtpPage(),
                SetUpAccount(),
              ],
            ),
          ),
          const AuthButton(),
        ],
      );
    });
  }
}

class AuthPageWidget extends StatelessWidget {
  final int page;
  final String? uid;

  const AuthPageWidget({
    super.key,
    required this.page,
    this.uid,
  });

  @override
  Widget build(BuildContext context) {
    final state = AuthState(page, uid ?? '');
    return ChangeNotifierProvider(
      create: (_) => state,
      child: ChangeNotifierProvider.value(
        value: state,
        child: AuthPage(page: page, uid: uid),
      ),
    );
  }
}
