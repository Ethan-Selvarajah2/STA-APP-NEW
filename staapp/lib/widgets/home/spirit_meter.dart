import 'package:flutter/material.dart';
import 'package:staapp/theme/styles.dart';
import 'package:staapp/theme/theme.dart';
import 'dart:io';

class SpiritMeter extends StatelessWidget {
  const SpiritMeter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double widths = MediaQuery.sizeOf(context).width < 650
        ? MediaQuery.sizeOf(context).width - 16
        : (MediaQuery.sizeOf(context).width - 72) / 2;
    final theme = Theme.of(context);
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
          width: widths,
          height: null,
          decoration: BoxDecoration(
              boxShadow: Styles.normalBoxShadow,
              borderRadius: Styles.primaryBorderRadius),
          child: Card(
              color: Colors.white,
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Spirit Meter',
                            style: theme.textTheme.displayLarge
                                ?.copyWith(color: Styles.primary)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text('9',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: Styles.primary,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 12.0, left: 31),
                              width: 150.0,
                              height: null,
                              decoration: BoxDecoration(
                                color: Color(0xFF8D1230),
                                border: Border.all(
                                    color: Color(0xFFD8AE1A), width: 5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text('10',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: Styles.primary,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 12.0, left: 22),
                              width: 130.0,
                              height: null,
                              decoration: BoxDecoration(
                                color: Color(0xFF8D1230),
                                border: Border.all(
                                    color: Color(0xFFD8AE1A), width: 5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text('11',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: Styles.primary,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 12.0, left: 22),
                              width: 165.0,
                              height: null,
                              decoration: BoxDecoration(
                                color: Color(0xFF8D1230),
                                border: Border.all(
                                    color: Color(0xFFD8AE1A), width: 5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text('12',
                                  style: theme.textTheme.bodyLarge?.copyWith(
                                      color: Styles.primary,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 12.0, left: 22),
                              width: 180.0,
                              height: null,
                              decoration: BoxDecoration(
                                color: Color(0xFF8D1230),
                                border: Border.all(
                                    color: Color(0xFFD8AE1A), width: 5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            )
                          ],
                        ),
                      ])))),
    ]);
  }
}
