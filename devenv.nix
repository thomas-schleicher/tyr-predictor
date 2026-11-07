{ pkgs, ... }:

{
  packages = with pkgs; [
    git
  ];

  languages.python = {
    enable = true;
    package = pkgs.python315;
    uv.enable = true;
  };
}
