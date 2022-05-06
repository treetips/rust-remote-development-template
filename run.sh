#!/bin/sh
package_name=$(cat ./Cargo.toml | grep 'name = ' | sed -e "s/\(name\|['\"= ]\)//g")
# @see https://github.com/watchexec/cargo-watch
cargo watch -x "run --bin ${package_name}"

