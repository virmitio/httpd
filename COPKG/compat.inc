compatability-policy {
    minimum: "2.5.0.0";
    maximum: "${OneLessThanCurrent}"; // this is the default
    versions : {
        "2.5",
    }; // if not specified, find the versions by looking at the feeds and finding all the major/minor versions in range.
}

