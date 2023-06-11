import 'package:flutter/material.dart';
import 'package:intermediate/common/const/colors.dart';
import 'package:intermediate/common/layout/default_layout.dart';

import '../../common/component/common_custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Title(),
                const SizedBox(height: 16.0),
                _Subtitle(),
                Image.asset('asset/img/misc/logo.png',
                    width: MediaQuery.of(context).size.width * 2 / 3),
                CustomTextFormField(
                  onChanged: (String value) {},
                  hintText: '이메일을 입력해주세요.',
                ),
                const SizedBox(height: 16.0),
                CustomTextFormField(
                    onChanged: (String value) {},
                    obscureText: true,
                    hintText: '비밀번호를 입력해주세요.'),
                const SizedBox(height: 16.0),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: PRIMARY_COLOR),
                    child: Text('로그인')),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: Text('회원가입')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '환영합니다!',
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  const _Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '라이트닝과 함께 생산적인 습관을 지속해보세요!\n오늘 하루도 보람있는 시간이 되었기를 :)',
      style: TextStyle(
        fontSize: 16,
        color: BODY_TEXT_COLOR,
      ),
    );
  }
}
