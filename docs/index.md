# Oleg Tsarev

I work on infrastructure, and in my own time on hardware that was not meant to
be programmable by its owner.

## Turing Pi 2 BMC firmware

The Turing Pi 2 carries four compute modules; a small SoC powers them and
serves a web interface. Upstream's firmware is dormant — its mirror stops at
v2.0.5 — so [this fork](https://turing.excavador.xyz) picked it up.

What it adds, briefly: a **health-gated A/B update** that undoes a bad image by
itself, a **temperature sensor** the board never had, a **kernel-driven fan**,
**Prometheus metrics** behind a credential that cannot touch the control API,
and a **serial console per module** in the browser.

[Read more →](https://turing.excavador.xyz)

## Homelab

A four-node Kubernetes cluster on those compute modules, plus the tooling that
keeps it honest — including MCP servers for NetBox and for the household
inventory.

[Read more →](https://homelab.excavador.xyz)

## Elsewhere

- [github.com/excavador](https://github.com/excavador)
