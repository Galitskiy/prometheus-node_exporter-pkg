# Build packages for prometheus-node-exporter in Docker

1. Choose version: https://github.com/prometheus/node_exporter/releases
2. Define necessary version in file [VERSION](VERSION)
3. Build package

With default variables:
```bash
$ make build-deb
```

With defined variables:
```bash
$ make build-deb PKG_VENDOR='Pkg Vendor Name' PKG_MAINTAINER='Pkg Maintainer' PKG_URL='http://example.com/no-uri-given'
```

After build, package will be in `deb-package` local dir.
