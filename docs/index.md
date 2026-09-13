# Oleg Tsarev

I work on infrastructure, and in my own time on hardware that was not meant to
be programmable by its owner.

## Turing Pi 2 BMC firmware

The Turing Pi 2 carries four compute modules; a small SoC powers them and
serves a web interface. Upstream's firmware is dormant — its mirror stops at
v2.0.5 — so [this fork](https://turingpi.xyz) picked it up.

What it adds, briefly: a **health-gated A/B update** that undoes a bad image by
itself, a **temperature sensor** the board never had, a **kernel-driven fan**,
**Prometheus metrics** behind a credential that cannot touch the control API,
and a **serial console per module** in the browser.

[Read more →](https://turingpi.xyz)

## Homelab

A ten-node Kubernetes cluster: eight of those compute modules across two
boards, a Raspberry Pi 5, and an x86 builder. Talos Linux, so there is no SSH
and no package manager; Cilium in native routing; Argo CD reconciling
everything. The control plane is spread across three failure domains, so an
entire board can go away without taking the cluster with it.

Alongside it, the tooling that keeps it honest — MCP servers for NetBox and for
the household inventory, Helm charts for things that ship without any, and a
Talos installer for a board the Image Factory cannot build for.

[Read more →](https://homelab.excavador.xyz)

## Elsewhere

- [github.com/excavador](https://github.com/excavador)
