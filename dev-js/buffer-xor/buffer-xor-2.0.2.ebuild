# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit node

DESCRIPTION="A simple module for bitwise-xor on buffers"
HOMEPAGE="
	https://github.com/crypto-browserify/buffer-xor
	https://www.npmjs.com/package/buffer-xor
"

LICENSE="MIT"
KEYWORDS="~amd64"
RDEPEND="
	${NODEJS_RDEPEND}
	dev-js/safe-buffer
"
