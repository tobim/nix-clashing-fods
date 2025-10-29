let
  nixpkgs = builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/e99366c665bdd53b7b500ccdc5226675cfc51f45.tar.gz";
    sha256 = "1j303qlxzlh407q93kp7i3m1fq76l85ckg4402l3apd09vk0688j";
  };
  pkgs = import nixpkgs { };
in
{
  one = pkgs.fetchzip {
    url = "https://github.com/tobim/nix-clashing-fods/archive/refs/tags/one.tar.gz";
    hash = "sha256-BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=";
  };
  two = pkgs.fetchzip {
    url = "https://github.com/tobim/nix-clashing-fods/archive/refs/tags/two.tar.gz";
    hash = "sha256-BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=";
  };
}
