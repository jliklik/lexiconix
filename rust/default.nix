{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation {
  name = "libratatea";
 
  src = fetchGit {
    url = "https://github.com/jliklik/ratatea.git";
    ref = "main";
    rev = "126fac614cba020bdc675fe1ec6ee83ebdb395c1";
  };

  nativeBuildInputs = [
    pkgs.rustc
    pkgs.cargo
  ];

  buildPhase = ''
    cargo build --release
  '';

  installPhase = ''
    sudo mkdir -p $out/bin
    sudo cp target/release/libratatea.d $out/bin/
  '';
}
