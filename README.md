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
| [`profile/README.md`](profile/README.md) | The organization profile: who we are, the **Our Services** and **Our Brands** tables, the **Service Status** badge and table, contact details and the **Our Activity** grid for every Stux.Group brand |
| [`CONTRIBUTING.md`](CONTRIBUTING.md) | The default contributing guide for StuxGroup repositories |
| [`.github/workflows/generateMetrics.yml`](.github/workflows/generateMetrics.yml) | Builds the organization's activity metrics with [gh-metrics](https://github.com/gh-metrics/metrics) daily and on every push to `main`, and commits the SVGs to the orphan `metrics` branch |
| [`.github/workflows/status.yml`](.github/workflows/status.yml) | Hourly, checks out [StuxGroup/Status](https://github.com/StuxGroup/Status) and runs [GitHup](https://githup.stux.group)'s `readme` mode to refresh the **Service Status** table in the profile |
| `CHANGELOG.md`, `VERSION.md`, `commit.sh`, `commit.bat` | Release history and the scripts that commit and tag each release |
| [`tests/run.sh`](tests/run.sh) | Dependency-free checks that `VERSION.md` is a valid Date Version and matches the newest `CHANGELOG.md` entry |

## Metrics

`generateMetrics.yml` creates the `metrics` branch as an orphan on first run (sharing no
history with `main`), then renders `stats.svg`, `notable_simple.svg` and `notable_indepth.svg`
into it. The profile shows `stats.svg` from
`https://raw.githubusercontent.com/StuxGroup/.github/metrics/stats.svg`; each other brand's
`.github` repository publishes its own the same way. The workflow needs a `METRICS_TOKEN`
secret (a token that can read the organization's data); `gh-metrics/metrics` is pinned to a
commit SHA.

## Service status

`status.yml` reads the monitoring data and `.githup.yml` straight from the public
`StuxGroup/Status` repository and rewrites the table between the `<!-- githup:start -->` and
`<!-- githup:end -->` markers in `profile/README.md`, committing as `github-actions[bot]` only
when something changed. Don't edit inside the markers. It needs no secrets.

## Versioning

This repository uses [Date Versioning](https://datevers.ing): each version is the UTC date it
was released, as `YY.MM.DD` (`26.10.22`), with `-1`, `-2` and so on for later releases that same
UTC day (`26.10.22-1`). `VERSION.md` holds the bare version; tags and changelog headings add a
`v` (`v26.10.22`). Releases up to v1.3.1 used Semantic Versioning.

## Releasing

1. Update `CHANGELOG.md` with a `## vYY.MM.DD` entry (sections in the order Added, Changed,
   Fixed, Removed, Security, Deprecated).
2. Set `VERSION.md` to the next Date Version: today's UTC date (`date -u +%y.%m.%d`), or
   `YY.MM.DD-N` if that date is already tagged (one more than the highest `-N` used that day).
3. Run `bash tests/run.sh`.
4. Run `./commit.sh` (or `commit.bat`), which refuses a version that isn't a Date Version, isn't
   a real date or is in the future (UTC), then commits and tags `vYY.MM.DD`. It doesn't push:
   push with `git push origin main --tags`.

## Contributing

We welcome contributions! Please refer to our [Contributing Guidelines](CONTRIBUTING.md) for details on how to participate in improving our organization's standards.

## License

This project is open source and available for use and modification.

---

Made by [Stux.Group](https://github.com/StuxGroup)

*Stux.Group is the parent of the <img src="https://global.media.stux.group/icon.png" height="14" alt="Stux.Group" valign="middle"> Stux.Group Brand of Companies.*
