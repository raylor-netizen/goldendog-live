# What GoldenDog ships today (from official ISO)

Source: `goldendog-2.1.33.1-amd64.iso` (SHA256 `f3787b67…cdd3`)

## Product type

**Debian 13 (Trixie) NETINST + firmware** — not a live desktop.

- Boot → Debian installer
- Packages downloaded from mirrors during install (`preseed.cfg`)
- Branding applied via `goldendog/postinstall.sh` + `goldendog/rootfs/` on first boot

## GoldenDog DNA we reuse for live

| Path | Role |
|------|------|
| `goldendog/rootfs/etc/` | apt sources, skel Plasma/GTK look, motd, grub bits |
| `goldendog/rootfs/usr/` | icons, themes, apps assets |
| `goldendog/rootfs/packages/*.deb` | theme, welcome, firewall, plasma meta, release, keyring, … |
| `goldendog/postinstall.sh` | first-boot overlay + package install logic (adapt for live chroot) |
| `preseed.cfg` | intended desktop package set (KDE task + extras) |

## Gap this showcase fills

Other desktop distros: USB → **try desktop** → optional install.  
GoldenDog today: USB → **install only**.  

`goldendog-live` builds a Plasma live ISO that boots from USB using the packaging/branding above.
