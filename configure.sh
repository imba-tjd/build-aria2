set -ex

HOST=x86_64-w64-mingw32 PREFIX=/usr/local/$HOST

autoreconf -i && ./configure \
    --host=$HOST \
    --prefix=$PREFIX \
    --with-wintls \
    --disable-nls \
    --disable-bittorrent \
    --disable-metalink \
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
    CFLAGS="-Os -flto=auto -fno-fat-lto-objects" \
    CXXFLAGS="-Os -flto=auto -fno-fat-lto-objects" \
    CPPFLAGS="-I$PREFIX/include" \
    LDFLAGS="-L$PREFIX/lib -Wl,--as-needed -flto=auto" \
    PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig"
