// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import '../lib/fortune.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    Fortune fortune;

    setUp(() {
      fortune = new FortuneFromData();
    });

    test('First Test', () {
      expect(fortune.next(), isNotEmpty);
    });
  });
}
