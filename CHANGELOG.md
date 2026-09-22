# Changelog

All notable changes to Stux.Group's `.github` organization repository are documented here.

## v1.0.7

### Fixed
- "Our Services" table's "What it is" column was rendering badly unbalanced — the Gaymer.Social row's description was much longer than the others, stretching the column. Shortened the Ream.st and Gaymer.Social descriptions so all three rows are comparable lengths.

## v1.0.6

### Changed
- "Our Activity" grid's Ream.st subtitle changed from "Multi Stream Viewer Provider" to Ream.st's actual slogan, "One Viewer, One Provider, Multiple Streams!"

## v1.0.5

### Added
- `profile/README.md`'s "Our Activity" section expanded from a single Stux.Group-only widget into a grid with every Stux.Group brand's own activity metrics: Stux.Group, Stux.Dev, StuxAPIs, Stuxedo, Stux.Cloud, Stux.Music, Ream.st, and Gaymer.Social.

## v1.0.4

### Added
- `profile/README.md` now states that "Stux.Group" is the trading name of Stux Group Ltd, with full company registration details.

## v1.0.3

### Fixed
- `profile/README.md`'s "Our Projects" table still listed Stuxs.Tools and Downl.one as direct Stux.Group projects — they're now operated by Stux.Dev, not Stux.Group directly, so they were removed from this table.
### Changed
- Renamed "Our Projects" to "Our Services" (Stuxs.Tools/Downl.one weren't the only stale entries — this table is for direct Stux Group Ltd services, not every brand under the group), and added Ream.st, which was missing.

## v1.0.2

### Fixed
- `README.md` and `profile/README.md`'s Stux.Group logo/icon URLs had a leftover duplicated `/global/` path segment (`global.media.stux.group/global/logo.png` and `/icon.png`) — corrected to `https://global.media.stux.group/logo.png` and `/icon.png`

## v1.0.1

### Fixed
- `generateMetrics.yml`'s `setup` job created the `metrics` branch by branching off `main`'s current commit, so
  it wasn't actually an orphan branch — it carried the whole repo history and file tree instead of starting
  empty. Now creates a true root commit (via the git empty-tree hash, no parents) and points `metrics` at that,
  so the branch only ever holds what the `gh-metrics/metrics` action commits to it. The already-created (wrong)
  `metrics` branch was deleted so the next run recreates it correctly and regenerates the SVGs

## v1.0.0

### Added
- Initial organization profile (`profile/README.md`)
- Organization-wide `README.md` and `CONTRIBUTING.md`
- `generateMetrics.yml` reusable workflow for the profile activity stats
- `VERSION.md` / `CHANGELOG.md` / `commit.sh` / `commit.bat` versioning setup
- "Our Projects" table in `profile/README.md`, linking out to Stuxs.Tools, Downl.one, the Stux.Group website, and Gaymer.Social (noted as discontinued as of September 2026)

### Changed
- General contact address changed from `contact@stux.group` to `hello@stux.group`, and a separate `legal@stux.group` address added for legal/privacy/copyright inquiries — in `CONTRIBUTING.md` and `profile/README.md`
- Contact information formatting in `profile/README.md` improved for clarity
- `gh-metrics` action version bumped in `generateMetrics.yml`
