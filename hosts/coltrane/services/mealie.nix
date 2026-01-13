{ config, ... }:

{
  services = {
    mealie = {
      enable = true;
      port = 9000;
      settings = {
        GENERAL__BASE_URL = "https://mealie.coltrane.local";
      };
    };

    nginx.virtualHosts."mealie.coltrane.local" = {
      forceSSL = true;
      enableACME = true;

      locations."/" = {
        proxyPass = "http://127.0.0.1:${toString config.services.mealie.port}";
        proxyWebsockets = true;
      };
    };
  };
}
