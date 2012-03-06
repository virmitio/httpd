@import "version.inc" ;
@import "outercurve.inc" ;

package {
    name: "httpd-dev[${flavor}]";
    version: "${package-version}";
    arch : "${arch}";

    display-name: "httpd developer library";
}

metadata {
    summary: "The httpd developer library";
    description: @"httpd"; 

    icon: @"httpd.png";
    
    author-version : "trunk";
    bug-tracker: "https://github.com/coapp-packages/httpd/issues";
    stability : "0";
    licenses : {
        Apache
    };
}

requires {
    package: "httpd-dev-common-${package-version}-any-${Package.PublicKeyToken}";
    package: "httpd[${flavor}]-${package-version}-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "libiconv-dev-common-1.13.1.1-any-${Package.PublicKeyToken}";
    package: "libiconv[${flavor}]-1.13.1.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "zlib-dev-common-1.2.5.34-any-${Package.PublicKeyToken}";
    package: "zlib[${flavor}]-1.2.5.34-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "serf[${flavor}]-1.0.1.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "serf-dev-common-1.0.1.1-any-${Package.PublicKeyToken}";
	package: "openssl[${flavor}]-1.0.0.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "openssl-dev-common-1.0.0.3-any-${Package.PublicKeyToken}";
	package: "libxml2[${flavor}]-2.7.8.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "libxml2-dev-common-2.7.8.3-any-${Package.PublicKeyToken}";
	package: "pcre[${flavor}]-5.0.0.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "pcre-dev-common-5.0.0.3-any-${Package.PublicKeyToken}";
	package: "lua[${flavor}]-5.2.0.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "lua-dev-common-5.2.0.1-any-${Package.PublicKeyToken}";
	package: "apr[${flavor}]-2.0.0.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "apr-dev-common-2.0.0.1-any-${Package.PublicKeyToken}";
}

files[libs] {
    root: @"..\output\${arch}\Release\";
    
    include: {
        "libhttpd.lib",
    };
    
    trim-path: all;
};

developer-library[httpd] {
    libraries : {
        libs,
    };
}