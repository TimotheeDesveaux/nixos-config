{ ... }:

{
  services.nginx = {
    enable = true;
  };

  security.acme = {
    acceptTerms = true;
    defaults.email = "timothee.desveaux@gmail.com";
  };

  networking.firewall.allowedTCPPorts = [ 80 443 ];
}
