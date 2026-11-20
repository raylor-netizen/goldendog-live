# GoldenDog Live (showcase)

**Try GoldenDog from USB** — community live ISO built from official GoldenDog branding.

Alexia’s CDN image is a **network installer** (Debian netinst): USB boots the installer only. Users keep asking for a try-before-install desktop; this repo showcases that missing path.

> Upstream stance (WeeChat / Discord, 2026-11-18): live USB is intentionally not shipped today — “diseñada más bien como server” / live loads the system into RAM and feels poor on low-RAM machines. This showcase still proves the technical path and documents a **recommended ≥4 GiB RAM** for a usable Plasma live session.

## Status

Public showcase for [goldendoglinux](https://github.com/goldendoglinux) consideration.  
**License: AGPL-3.0-or-later** (matches upstream `goldendog-theme` / `iso`).

## Build

```bash
sudo apt install live-build squashfs-tools xorriso
./auto/config
sudo lb build
```

Needs several GB free and time (Plasma). Artifact name is typically `goldendog-live-amd64.hybrid.iso`.

## Test with Ventoy

Copy the ISO to a Ventoy USB and boot. Live user: `goldendog` (NOPASSWD sudo for demo).

## Live vs official netinst

| | Official CDN ISO | This live showcase |
|--|------------------|--------------------|
| Boot | Installer | Plasma desktop |
| Network to see desktop | Yes | No |
| Branding | `goldendog/` on ISO | same overlay + debs |
| License of recipe | — | AGPL-3.0-or-later |

## Branding / logo provenance

Desktop DNA comes from the official ISO `goldendog/` overlay and packages. The ribbon-dog artwork originated in Tulio Bastidas’s [Goldendog_pack_images](https://github.com/tuliobast/Goldendog_pack_images) (MIT). File metadata on `goldendog_Linux_1.png` embeds C2PA credentials identifying **OpenAI gpt-image v2.0** (2026-05-12). Documented here for transparency — not credited as human-drawn art.

## Contribute

See [CONTRIBUTING.md](CONTRIBUTING.md). Issues/PRs welcome on package lists, hooks, Calamares branding, and docs.

## License

AGPL-3.0-or-later — see [LICENSE](LICENSE). Upstream GoldenDog packages keep their own licenses.
