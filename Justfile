# The three sites of tsarev.id.
#
# MkDocs is the only Python in this estate -- everything else is Node 24 or
# Rust. That was a deliberate trade for Material's docs UX; devbox contains the
# cost rather than letting it spread.

sites := "tsarev turing homelab"

default:
    @just --list

# Build every site into sites/<name>/site
build:
    #!/usr/bin/env bash
    set -euo pipefail
    for s in {{sites}}; do
        echo "-- $s"
        (cd sites/$s && mkdocs build --strict)
    done

# Serve one site with live reload, e.g. `just serve turing`
serve site="tsarev":
    cd sites/{{site}} && mkdocs serve

# Build with --strict, which fails on a broken internal link. These sites
# describe three repositories that move; a link checker is the only thing that
# notices when one of them moves out from under a page.
check: build

# Remove the built output
clean:
    rm -rf sites/*/site
