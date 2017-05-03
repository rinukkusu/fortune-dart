// Copyright (c) 2017, 'rinukkusu'. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of fortune;

abstract class Fortune {
  FutureOr<String> _nextImpl();
  FutureOr<String> next() => _nextImpl();
}
