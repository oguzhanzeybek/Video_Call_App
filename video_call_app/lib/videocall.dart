import 'package:flutter/material.dart';
import 'package:video_call_app/main.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'ConstVariable.dart';

class CallPage extends StatelessWidget {
  const CallPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: appId,
      appSign: appSign,
      userID: usernamecontroller.text,
      userName: namecontroller.text,
      callID: idcontroller.text,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
