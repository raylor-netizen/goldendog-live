# Contributing

1. Fork https://github.com/raylor-netizen/goldendog-live
2. Edit `config/package-lists/`, `config/includes.chroot_after_packages/`, or `config/hooks/`
3. Keep **AGPL-3.0** (same as upstream GoldenDog theme/iso forks)
4. `sudo lb build` locally (large disk + time)
5. Test on Ventoy or a VM (≥4 GiB RAM recommended)
6. Open a PR with what changed and how you tested

Do **not** commit built ISO files, `chroot/`, or `cache/`.

Good first issues: live boot bugs, package requests, Calamares branding, docs, RAM/performance notes.
