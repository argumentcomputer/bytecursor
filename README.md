# Bytecursor

![docs](https://docs.rs/bytecursor/badge.svg)

`bytecursor` is a fully-featured `std::io::Read`, `std::io::Write`, and `std::io::Seek`. It was created for use in `sp-ipld` as a concrete replacement for the originally trait-generic parameters. It should be fully equivalent to a `std::io::Cursor<Vec<u8>>` for all intents and purposes.

Bytecursor is `no-std` compatible, using only `core` and `alloc`.

## License

```
Copyright © 2021 Yatima Inc

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

This project was forked from https://github.com/multiformats/rust-multihash
(Copyright © 2015-2016 Friedel Ziegelmayer) and 
contains code which is subject to the terms of the MIT License.

## Code of Conduct

This project is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its
terms.
