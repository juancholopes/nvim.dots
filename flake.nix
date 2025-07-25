{
  description = "Gentleman: Single config for all systems in one go";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";  # Home Manager repository
      inputs.nixpkgs.follows = "nixpkgs";  # Follow nixpkgs input
    };
    flake-utils.url = "github:numtide/flake-utils";  # Flake utilities
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }:
    let 
      unstablePkgs = import nixpkgs-unstable {
        system = "x86_64-linux";  # Make sure this matches your system
        config.allowUnfree = true;
      };
      system = "x86_64-linux";  # Make sure this matches your system
      pkgs = import nixpkgs { inherit system; };  # Import nixpkgs for the specified system
    in {
      homeConfigurations = {
        "juancho" =
          home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            modules = [
              ./nushell.nix  # Nushell configuration
              ./ghostty.nix  # Ghostty configuration
              ./wezterm.nix  # WezTerm configuration
              ./zellij.nix  # Zellij configuration 
              ./fish.nix  # Fish shell configuration
              ./starship.nix  # Starship prompt configuration
              ./nvim.nix  # Neovim configuration
              ./alacritty.nix # Alacritty configuration
              ./zsh.nix  # Zsh configuration
              {
                # Personal data
                home.username = "juancho";  # Replace with your username
                home.homeDirectory = "/home/juancho/";  # Replace with your home directory
                home.stateVersion = "24.11";  # State version

                home.packages = with pkgs; [
                  # ─── Terminals and utilities ───
                  zellij
                  fish
                  zsh
                  nushell

                  # ─── Development tools ───
                  volta
                  carapace
                  zoxide
                  atuin
                  jq
                  bash
                  starship
                  fzf
                  unstablePkgs.neovim
                  nodejs
                  bun
                  cargo
                  go
                  nil
                  unstablePkgs.goose-cli

                  # ─── Compilers and system utilities ───
                  gcc
                  fd
                  ripgrep
                  coreutils
                  bat
                  lazygit

                  # ─── Nerd Fonts ───
                  nerd-fonts.iosevka-term
                  nerd-fonts.jetbrains-mono
                ];
              }
            ];
          };
      };
    };
}
