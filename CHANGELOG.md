# Changelog

All notable changes to Stux.Group's `.github` organization repository are documented here.

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
