{ pkgs, ... }:

{
  packages = with pkgs; [
    git
    git-lfs
  ];

  languages.python = {
    enable = true;
    package = pkgs.python315;
    uv.enable = true;
  };
}
