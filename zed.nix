{ pkgs, ... }:

{
  home.packages = [ pkgs.zed-editor pkgs.nodePackages.prettier pkgs.nodePackages.eslint]; # O el nombre correcto del paquete de Zed en nixpkgs

  xdg.configFile."zed/settings.json" = {
    source = ./zed/settings.json; # Asumiendo que settings.json está en ./zed/settings.json
                                # relativo a la ubicación de zed.nix
  };

}
