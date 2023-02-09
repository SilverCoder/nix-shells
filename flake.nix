{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
    rust = { url = "path:./rust"; inputs.nixpkgs.follow = "nixpkgs"; };
  };

  outputs = { nixpkgs, rust, ... }: {
    homeManagerModules = {
      rust = rust.homeManagerModules.default;
    };
  };
}
