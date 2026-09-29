<p align="center">
  <img src="https://global.media.stux.group/logo.png" height="100" alt="Stux.Group Logo">
</p>

# Stux.Group GitHub Configuration

The central repository for Stux.Group's GitHub organization configuration and profile settings.

## Overview

GitHub treats a `.github` repository specially: its `profile/README.md` is shown on the
[StuxGroup organization page](https://github.com/StuxGroup), and community health files at its
root (like `CONTRIBUTING.md`) become the defaults for every public StuxGroup repository that
doesn't have its own.

## What's in it

| Path | What it does |
| ---- | ------------ |
| [`profile/README.md`](profile/README.md) | The organization profile: who we are, the **Our Services** table with a live [status](https://status.stux.group) badge, contact details and the **Our Activity** grid for every Stux.Group brand |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | The default contributing guide for StuxGroup repositories |
| [`.github/workflows/generateMetrics.yml`](.github/workflows/generateMetrics.yml) | Builds the organization's activity metrics with [gh-metrics](https://github.com/gh-metrics/metrics) daily and on every push to `main`, and commits the SVGs to the orphan `metrics` branch |
| `CHANGELOG.md`, `VERSION.md`, `commit.sh`, `commit.bat` | Release history and the scripts that commit and tag each release |

## Metrics

`generateMetrics.yml` creates the `metrics` branch as an orphan on first run (sharing no
history with `main`), then renders `stats.svg`, `notable_simple.svg` and `notable_indepth.svg`
into it. The profile shows `stats.svg` from
`https://raw.githubusercontent.com/StuxGroup/.github/metrics/stats.svg`; each other brand's
`.github` repository publishes its own the same way. The workflow needs a `METRICS_TOKEN`
secret (a token that can read the organization's data); `gh-metrics/metrics` is pinned to a
commit SHA.

## Releasing

Update `CHANGELOG.md` (sections in the order Added, Changed, Fixed, Removed, Security,
Deprecated), bump `VERSION.md`, then run `./commit.sh` (or `commit.bat`), which commits and tags
`vX.Y.Z`. Push with `git push origin main vX.Y.Z`.

## Contributing

We welcome contributions! Please refer to our [Contributing Guidelines](CONTRIBUTING.md) for details on how to participate in improving our organization's standards.

## License

This project is open source and available for use and modification.

---

Made by [Stux.Group](https://github.com/StuxGroup)

*Stux.Group is the parent of the <img src="https://global.media.stux.group/icon.png" height="14" alt="Stux.Group" valign="middle"> Stux.Group Brand of Companies.*
