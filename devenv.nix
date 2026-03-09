{ pkgs, ... }:

{
  # Native extension build dependencies
  packages = [
    pkgs.postgresql
    pkgs.zlib
    pkgs.libffi
    pkgs.libyaml
    pkgs.pkg-config
  ];

  languages.ruby = {
    enable = true;
    version = "3.2.2";
    bundler.enable = true;
    lsp.enable = false;
  };
}
