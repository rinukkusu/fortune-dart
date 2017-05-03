// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of fortune;

class FortuneFromSyscall extends Fortune {
  @override
  FutureOr<String> _nextImpl() async {
    var completer = new Completer();
    var process = await Process.start('fortune', []);

    String fortune = "";

    process.stdout.transform(UTF8.decoder).take(20).listen((String data) {
      fortune += data;
    })
      ..onError(completer.completeError)
      ..onDone(() => completer.complete(fortune));

    return completer.future;
  }
}
