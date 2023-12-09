all: win

full: release debug

release: win-release lnx-release

debug: win lnx

.PHONY: src

win: src
	cargo build --target x86_64-pc-windows-gnu

lnx: src
	cargo build --target x86_64-unknown-linux-gnu

win-release: src
	cargo build --target x86_64-pc-windows-gnu --release

lnx-release: src
	cargo build --target x86_64-unknown-linux-gnu --release