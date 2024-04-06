{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "rust-env";
  buildInputs = with pkgs; [
    rustc
    gcc
    clang
    cargo
    rustfmt
  ];

  RUST_BACKTRACE = 1;
}
