import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _slideIsEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _slideIsEnable
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //   value: _slideIsEnable,
          //   onChanged: (value) {
          //     _slideIsEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _slideIsEnable,
            onChanged: (value) => setState(() {
              _slideIsEnable = value ?? true;
            }),
          ),
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _slideIsEnable,
            onChanged: (value) => setState(() {
              _slideIsEnable = value ?? true;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  fit: BoxFit.contain,
                  width: _sliderValue,
                  image: const NetworkImage(
                      'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e67276bb-fbd5-41ae-9278-4c820c8d6af4/dei48pa-31e480ca-aea2-4fc3-ae6a-27d6c2a20765.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2U2NzI3NmJiLWZiZDUtNDFhZS05Mjc4LTRjODIwYzhkNmFmNFwvZGVpNDhwYS0zMWU0ODBjYS1hZWEyLTRmYzMtYWU2YS0yN2Q2YzJhMjA3NjUuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.WxmgRc1D9ysdTm98DA9ujfoUsMgSAjI_kpDc-umxEh4')),
            ),
          ),
        ],
      ),
    );
  }
}
