# geni-login
The GENI identity provider login page

This code is intended to overlay a
[Shibboleth 2 IdP](https://wiki.shibboleth.net/confluence/display/SHIB2/Home)
source tree for installation. It does not stand alone.

## Note:
* This guide does not cover Shibboleth installation and configuration. This
guide assumes that you already have a working installation and want to
update the login page.
* The login page is known to be compatible with Shibboleth IdP 2.3.6 and is
likely compatible with more recent versions of the Shibboleth 2 IdP series.
_This code is not compatible with version 3 of the Shibboleth IdP._

## Installation
To deploy this code you need to download the Shibboleth 2 IdP source tree:

```
wget http://shibboleth.net/downloads/identity-provider/2.3.6/shibboleth-identityprovider-2.3.6-bin.zip

unzip shibboleth-identityprovider-2.3.6-bin.zip
```

Copy the code in the webapp directory of this repository into the
shbboleth directory:

```
cp -r webapp shibboleth-identityprovider-2.3.6/src/main/webapp
```

Install the identity provider:

```
shibboleth-identityprovider-2.3.6/install.sh
```
