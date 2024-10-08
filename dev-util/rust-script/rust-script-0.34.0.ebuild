# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.3

EAPI=8

CRATES="
	aho-corasick@1.0.2
	anstream@0.3.2
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@1.0.1
	anstyle@1.0.1
	bitflags@1.3.2
	bitflags@2.3.3
	block-buffer@0.10.4
	cc@1.0.82
	cfg-if@1.0.0
	clap@4.3.21
	clap_builder@4.3.21
	clap_lex@0.5.0
	colorchoice@1.0.0
	cpufeatures@0.2.9
	crypto-common@0.1.6
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	env_logger@0.10.0
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.3.2
	fastrand@2.0.0
	generic-array@0.14.7
	getopts@0.2.21
	getrandom@0.2.10
	hashbrown@0.14.0
	hermit-abi@0.3.2
	humantime@2.1.0
	indexmap@2.0.0
	is-terminal@0.4.9
	itertools@0.4.19
	lazy_static@0.1.16
	lazy_static@1.4.0
	libc@0.2.147
	linux-raw-sys@0.4.5
	log@0.4.19
	memchr@2.5.0
	option-ext@0.2.0
	proc-macro2@1.0.66
	pulldown-cmark@0.9.3
	quote@1.0.32
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex-automata@0.3.6
	regex-syntax@0.7.4
	regex@1.9.3
	rustc_version@0.1.7
	rustix@0.38.7
	scan-rules@0.2.0
	semver@0.1.20
	serde@1.0.183
	serde_spanned@0.6.3
	sha1@0.10.5
	shell-words@1.1.0
	strcursor@0.2.5
	strsim@0.10.0
	syn@2.0.28
	tempfile@3.7.1
	termcolor@1.2.0
	thiserror-impl@1.0.44
	thiserror@1.0.44
	toml@0.7.6
	toml_datetime@0.6.3
	toml_edit@0.19.14
	typenum@1.16.0
	unicase@2.6.0
	unicode-ident@1.0.11
	unicode-segmentation@0.1.2
	unicode-width@0.1.10
	utf8parse@0.2.1
	version_check@0.9.4
	wasi@0.11.0+wasi-snapshot-preview1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.48.1
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.48.0
	winnow@0.5.4
	winreg@0.50.0
"

inherit cargo

DESCRIPTION="Command-line tool to run Rust scripts which can make use of crates"
HOMEPAGE="https://rust-script.org"
SRC_URI="
	https://github.com/fornwall/rust-script/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="|| ( Apache-2.0 MIT )"
# Dependent crate licenses
LICENSE+=" MIT MPL-2.0 Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/.*"

PATCHES=(
	# tests does not work with CARGO_BUILD_TARGET defined
	"${FILESDIR}/${P}-fix-test.patch"
)

src_prepare() {
	default
	sed -i "s|\"target\"|\"$(cargo_target_dir)\"|" tests/util/mod.rs || die
}
