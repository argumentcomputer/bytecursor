# Bytecursor

`bytecursor` is a fully-featured `std::io::Read`, `std::io::Write`, and `std::io::Seek`. It was created for use in `sp-ipld` as a concrete replacement for the originally trait-generic parameters. It should be fully equivalent to a `std::io::Cursor<Vec<u8>>` for all intents and purposes.

Bytecursor is `no-std` compatible, using only `core` and `alloc`.