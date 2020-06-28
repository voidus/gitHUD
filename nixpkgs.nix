let
  rev = "db5bbef31fa05b9634fa6ea9a5afbea463da88ea";
  sha256 = "1mbg92llq9cn396ml8n19nvyn19wj8ps60iqm70dw2w45jr68l4f";
in

import (builtins.fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
  inherit sha256;
})
