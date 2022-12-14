set -ex

HOST=x86_64-w64-mingw32 PREFIX=/usr/local/$HOST

autoreconf -i && ./configure \
    --host=$HOST \
    --prefix=$PREFIX \
    --with-wintls \
    --disable-nls \
    --disable-bittorrent \
    --disable-websocket \
    --without-included-gettext \
    --without-libcares \
    --without-gnutls \
    --without-openssl \
    --without-sqlite3 \
    --without-libxml2 \
    --without-libexpat \
    --without-libz \
    --without-libgmp \
    --without-libssh2 \
    --without-libgcrypt \
    --without-libnettle \
    --with-cppunit-prefix=$PREFIX \
    ARIA2_STATIC=yes \
    CFLAGS="-Os" \
    CXXFLAGS="-Os" \
    CPPFLAGS="-I$PREFIX/include" \
    LDFLAGS="-L$PREFIX/lib -Wl,--as-needed" \
    PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig"
