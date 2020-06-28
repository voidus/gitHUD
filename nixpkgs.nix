# To upgrade
# - Find latest commit on howoldis.herokuapp.com
# - execute nix-prefetch-url --unpack https://github.com/nixos/nixpkgs/archive/SHORT_COMMIT.tar.gz
# - replace below rev with the SHORT_COMMIT and sha256 by the hash output by the previous command
let
  rev = "db5bbef31fa05b9634fa6ea9a5afbea463da88ea";
  sha256 ="1mbg92llq9cn396ml8n19nvyn19wj8ps60iqm70dw2w45jr68l4f";
in
import (fetchTarball {
  inherit sha256;
  url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
})
