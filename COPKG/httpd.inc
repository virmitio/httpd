@import "version.inc";
@import "outercurve.inc";

package {
    name: "httpd[${flavor}]";
    version: "${package-version}";
    arch : "${arch}";
    
    display-name: "httpd";
    location: "http://coapp.org/repository/${OutputFilename}";

    feed: "http://coapp.org/repository/packages.atom.xml";
    publisher: "CoApp Project";
}

license[Apache] {
    license-url: "www.apache.org/licenses/LICENSE-2.0.html";
    license-type: "Apache";
}

requires {
    package: "zlib[${flavor}]-1.2.5.34-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "libiconv[${flavor}]-1.13.1.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "serf[${flavor}]-1.0.1.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "openssl[${flavor}]-1.0.0.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "libxml2[${flavor}]-2.7.8.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "pcre[${flavor}]-5.0.0.3-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "lua[${flavor}]-5.2.0.1-${Package.Architecture}-${Package.PublicKeyToken}";
	package: "apr[${flavor}]-2.0.0.1-${Package.Architecture}-${Package.PublicKeyToken}";
}

metadata {  
    author-version : "trunk";
    bug-tracker: "https://github.com/coapp-packages/httpd/issues";
    stability : "0";
    licenses : {
        Apache
    };
}

compatability-policy {
    minimum: "2.5.0.0";
    maximum: "${OneLessThanCurrent}"; // this is the default
    versions : {
        "2.5",
    }; // if not specified, find the versions by looking at the feeds and finding all the major/minor versions in range.
}

signing {
    attributes : {
        company="Outercurve Foundation",
        description="httpd",
        product-name="httpd",
        product-version="${package-version}",
        file-version="${package-version}",
    };
    
    replace-signature: true; 
    include: { 
        files-to-sign
    };    
}

/////////////////////////
//
//  Manifests
//
//
manifest[httpd] {
    // all of our EXEs need to get the manifest entries for the assemblies we're creating in this package
    //lets just plaster all the output with a 'cover-all' manifest
    assembly : {
        zlib,
		libiconv,
		serf,
		apr,
		pcre,
		openssl,
		lua,
		libxml2,
		libhttpd,
    };
    
    include : { 
        exes,
		httpdexe,
		modules,
    };
}


manifest[libhttpd] {
    // all of our EXEs need to get the manifest entries for the assemblies we're creating in this package
    //lets just plaster all the output with a 'cover-all' manifest
    assembly : {
        zlib,
		libiconv,
		serf,
		apr,
		pcre,
		openssl,
		lua,
		libxml2,
    };
    
    include : { 
        dlls,
    };
}

/////////////////////////
//
//
//  Assemblies
//
//

assembly[libhttpd] {
    include : {
        dlls
    };
}

////////////////////
//
//  Output locations
//
application {
    include : {
        exes,
		modules,
		config,
		httpdexe,
		logs,
    };
}

package-composition {
    symlinks : { 
        exes => @"${bin}\${each.Name}" = @"${packagedir}\${each.Name}";
    };

	shortcut : { 
        httpdexe => @"${bin}\${each.Name}.lnk" = @"${packagedir}\${each.Name}";
    };

	
}

//////////////////
//
//  Files
//
files[files-to-sign] {
    include: { 
        dlls,
		exes,
		modules,
		httpdexe,
    };    
}

files[dlls] {
    root: @"..\output\${arch}\Release\";
  
    include: {
        "*.dll",
    };
    
    trim-path: all;
};

files[exes] {
    root: @"..\output\${arch}\Release\";
  
    include: {
		"ab.exe",
		"abs.exe",
		"ApacheMonitor.exe",
		"htcacheclean.exe",
		"htdbm.exe",
		"wintty.exe",
		"htdigest.exe",
		"htpasswd.exe",
		"httxt2dbm.exe",
		"logresolve.exe",
		"rotatelogs.exe",
    };

    trim-path: all;
};

files[httpdexe] {
    root: @"..\output\${arch}\Release\";
  
    include: {
        "httpd.exe"
    };
    
    trim-path: all;
};

files[modules] {
    root: @"..\output\${arch}\Release\modules";
  
    include: {
        "*.so"
    };
    
    trim-path: all;
    destination: "modules";
};

files[config] {
    root: @"dist\";
  
    include: {
        "httpd.conf",
		"mime.types"
    };
    destination: "conf";
    trim-path: all;
};

///put this in here because httpd isnt smart enough to create the directories itself
files[logs] {
    root: @"dist\";
  
    include: {
        "access.log",
    };
    destination: @"${etc}\logs\httpd\";
    trim-path: all;
};