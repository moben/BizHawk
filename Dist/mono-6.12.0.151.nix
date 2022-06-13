{ pkgs, fetchurl }:
pkgs.mono.overrideAttrs (old: rec {
	version = "6.12.0.151";
	src = fetchurl {
		url = "https://download.mono-project.com/sources/mono/preview/mono-${version}.tar.xz";
		sha256 = "sha256-yVh4VQuOgh2Qtxd6YMTaq1iLfwaSZMzlJAJQEU9GdDg=";
	};
})
