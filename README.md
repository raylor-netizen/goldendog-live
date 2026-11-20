# GoldenDog Live (showcase)

**Try GoldenDog from USB** — a community live ISO built from official GoldenDog branding.

Alexia’s current CDN image is a **network installer** (Debian netinst). It does not boot a try-before-install desktop. This repo showcases a **live Plasma** image so GoldenDog can work like other desktop Linux distros: plug in USB → try the desktop.

Built from the official ISO’s `goldendog/` overlay and packages (`theme`, `welcome`, `firewall`, …), plus a fork of [goldendog-theme](https://github.com/raylor-netizen/goldendog-theme).

## Status

Work-in-progress showcase for upstream consideration by [goldendoglinux](https://github.com/goldendoglinux).

## Build (Debian / GoldenDog host)

```bash
sudo apt install live-build squashfs-tools xorriso
cd goldendog-live
./auto/config   # or: lb config  (already committed under config/)
sudo lb build
```

Artifact: `goldendog-live-amd64.hybrid.iso` (name may vary by live-build version).

## Test with Ventoy

Copy the ISO to a Ventoy USB and boot. Default live user: `goldendog`.

## Contribute

See [CONTRIBUTING.md](CONTRIBUTING.md). Issues and PRs welcome — package lists, branding hooks, and Calamares polish are great starting points.

## Live vs official netinst

| | Official CDN ISO | This live showcase |
|--|------------------|--------------------|
| Boot | Installer | Plasma desktop |
| Network required to see desktop | Yes (install) | No (live root) |
| Branding source | `goldendog/` on ISO | same overlay + debs |

## License

GoldenDog branding/packages remain under their upstream licenses (GPL-3.0 etc.). Build recipes in this repo: GPL-3.0.
