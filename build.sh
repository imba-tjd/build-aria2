set -ex

HOST=x86_64-w64-mingw32 PREFIX=/usr/local/$HOST

autoreconf -i && ./configure \
    --host=$HOST \
    --prefix=$PREFIX \
    --with-wintls \
    --disable-nls \
    --disable-bittorrent \
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
    CPPFLAGS="-I$PREFIX/include" \
    LDFLAGS="-L$PREFIX/lib" \
    PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig"

make -j4

$HOST-strip src/aria2c.exe
