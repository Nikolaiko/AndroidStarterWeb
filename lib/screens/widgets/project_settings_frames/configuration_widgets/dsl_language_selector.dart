import 'package:android_starter_web/model/enum/dsl_language_enum.dart';
import 'package:flutter/material.dart';

class DSLLanguageSelector extends StatefulWidget {
  const DSLLanguageSelector({ Key? key }) : super(key: key);

  @override
  _DSLLanguageSelectorState createState() => _DSLLanguageSelectorState();
}

class _DSLLanguageSelectorState extends State<DSLLanguageSelector> {
  DslLanguage? _dslLanguage = DslLanguage.kotlin;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dsl Language"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(                
                child: RadioListTile<DslLanguage>(                  
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Kotlin'),
                  value: DslLanguage.kotlin,
                  groupValue: _dslLanguage,
                  onChanged: (DslLanguage? value) {
                    setState(() {
                      _dslLanguage = value;
                    });
                  },
                ),
              ),              
              Flexible(
                child: RadioListTile<DslLanguage>(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Grovy'),
                  value: DslLanguage.groovy,
                  groupValue: _dslLanguage,
                  onChanged: (DslLanguage? value) {
                    setState(() {
                      _dslLanguage = value;
                    });
                  },
                ),
              ),
              Spacer()
            ]
          )
        ]
      )
    );
  }
}