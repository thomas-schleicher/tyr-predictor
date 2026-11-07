{ pkgs, ... }:

{
  packages = with pkgs; [
    git
  ];

  languages.python = {
    enable = true;
    package = pkgs.python312;
    uv.enable = true;
  };
}
