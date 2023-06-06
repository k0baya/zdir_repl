{ pkgs }: {
  deps = [
    pkgs.wget
    pkgs.jq.bin
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
    pkgs.graalvm17-ce
  ];
}
