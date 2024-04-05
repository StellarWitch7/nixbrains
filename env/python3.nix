with import <nixpkgs> {};

mkShell {
  name = "python3-env";
  packages = [
    python311Full
    (writeShellScriptBin "python" ''
      exec python3 "$@"
    '')
  ];
}
