import 'package:taxiapp/pages/auth/auth_state.dart';
import 'package:taxiapp/ui/widget/textfields/cab_textfield.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../../../ui/theme.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key});

  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AuthState>(context);
    return Builder(
      builder: (context) {
        return Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kToolbarHeight * 0.6),
                Text(
                  'Enter Code',
                  style: Theme.of(context).textTheme.headlineSmall,
                ).paddingBottom(CityTheme.elementSpacing),
                Text(
                  'A 6 digit code has been sent to',
                  style: Theme.of(context).textTheme.bodyLarge,
                ).paddingBottom(8),
                Text(
                  '+234 ${state.phoneController.text}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                ).paddingBottom(CityTheme.elementSpacing),
                CityTextField(
                  controller: state.otpController,
                  label: 'O T P',
                  keyboardType: TextInputType.phone,
                ),
                Spacer(),
                state.phoneAuthState == PhoneAuthState.loading
                    ? Text(
                        'Verifying...',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
                      ).paddingBottom(8)
                    : SizedBox.shrink(),
                state.phoneAuthState == PhoneAuthState.codeSent
                    ? Row(
                        children: [
                          Text(
                            'Resend code in ',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '0:${state.timeOut}',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
                          )
                        ],
                      ).paddingBottom(8)
                    : SizedBox.shrink(),
              ],
            ),
          ),
        );
      },
    );
  }
}
