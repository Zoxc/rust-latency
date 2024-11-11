# Building Crusader from source

Reminder: [Pre-built binaries](https://github.com/Zoxc/crusader/releases)
are available for everyday tests.

## Required dependencies

* A Rust and C toolchain.
* `fontconfig` (optional, required for `crusader-gui`)

_Note:_ To install `fontconfig` on Ubuntu:

```sh
sudo apt install libfontconfig1-dev
```

## Building Crusader

To develop or debug Crusader, use the commands below
to build the full set of binaries.
Executables are placed in _src/target/release_

To build the `crusader` command line executable:

```sh
cd src
cargo build -p crusader --release
```

To build both command line and GUI executables:

```sh
cd src
cargo build --release
```

## Debug build

Create a debug build by using `cargo build`
(instead of `cargo build --release`).
Binaries are saved in the _src/target/debug_ directory

## Docker

To build a docker container that runs the server:

```sh
cd docker
docker build .. -t crusader -f server-static.Dockerfile
```
