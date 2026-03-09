{ pkgs, ... }:

{
  # Disable cachix to avoid evaluation errors when caches are unreachable
  cachix.enable = false;

  languages.ruby = {
    enable = true;
    # nixpkgs-ruby has 2.6.9 (2.6.6 not available); 2.6.9 is compatible with Gemfile's 2.6.6
    version = "2.6.9";
    bundler.enable = true;
  };
}
