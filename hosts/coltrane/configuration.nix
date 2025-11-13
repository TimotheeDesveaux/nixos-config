{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./disko.nix
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  networking.hostName = "coltrane";

  time.timeZone = "Europe/Paris";

  services.openssh.enable = true;

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAxYbbaXMBD7mhpqpZg4HWeDVa0RABAk0IOcKZjVotC4 stolen@nixos-lenovo-stolen"
  ];

  system.stateVersion = "25.05";
}
