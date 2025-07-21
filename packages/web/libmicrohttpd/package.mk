# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="libmicrohttpd"
PKG_VERSION="1.0.2"
PKG_SHA256="df324fcd0834175dab07483133902d9774a605bfa298025f69883288fd20a8c7"
PKG_LICENSE="LGPLv2.1"
PKG_SITE="https://www.gnu.org/software/libmicrohttpd/"
PKG_URL="https://ftpmirror.gnu.org/libmicrohttpd/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain gnutls"
PKG_LONGDESC="A small C library that is supposed to make it easy to run an HTTP server as part of another application."

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --disable-static \
                           --disable-examples \
                           --disable-curl \
                           --enable-https"

post_makeinstall_target() {
  rm -rf ${INSTALL}/usr/bin
}
