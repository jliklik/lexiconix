{ pkgs ? import <nixpkgs> {} }:
pkgs.rustPlatform.buildRustPackage rec {
  pname = "libratatea";
  version = "0.1.0";
 
  src = fetchGit {
    url = "https://github.com/jliklik/ratatea.git";
    ref = "main";
    rev = "126fac614cba020bdc675fe1ec6ee83ebdb395c1";
  };

  cargoLock = {
    lockFile = "${src}/Cargo.lock";
  };
}
