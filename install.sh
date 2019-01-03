#!/bin/sh --
export RUSTFLAGS='-Clto -Cpanic=abort'
sudo apt update
sudo apt install git build-essential libgmp3-dev -y
curl https://sh.rustup.rs -sSf | sh -s  -- -y
export PATH="$HOME/.cargo/bin:$PATH"
rustup install nightly
rustup default nightly
cargo install --force --path=vdf-competition
exit 0
