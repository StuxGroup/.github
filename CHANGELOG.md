# Changelog

All notable changes to Stux.Group's `.github` organization repository are documented here.

This project uses [Date Versioning](https://datevers.ing): each version is the UTC date it was
released, as `YY.MM.DD`, with `-1`, `-2` and so on for later releases that same day. Releases up
to v1.3.1 used Semantic Versioning.

## v26.11.13

### Changed

- The org profile shows Stux Group Ltd's new registered office, 124 City Road, London, EC1V 2NX, England

## v26.11.06-2

### Added
- A **Branches** section in `CONTRIBUTING.md`: work on `test`, reach `main` only through a pull request that needs CI to pass and is merged by Leo, with release commits and tags made on `test`
- A CI workflow (`.github/workflows/ci.yml`) that runs the tests on pushes to `main` and `test` and on pull requests

### Changed
- `README.md`'s Versioning section says releases are tagged on `test` and go live when the pull request into `main` is merged

## v26.11.06-1

### Fixed
- The Templates row in **Our Services** no longer calls the templates free to reuse: their licences reserve all rights

## v26.11.06

### Added
- **Our Brands** in `profile/README.md` has a Status column linking each brand's own status page, including the new Stux.Cloud Status and Stuxedo Status (status.stuxedo.com)
- **Our Services** lists Date Versioning (datevers.ing) and the reusable templates (Soonpage, Maintenancepage, Servicepage and GitHub Pages Redirect), and links services.stux.group as the full list
- **Our Activity** shows Stux.Digital, Stux.Design and Stux.Games alongside the other brands
- A **Branches** section in `README.md`: work happens on `test`, and reaches `main` through a pull request

### Changed
- The profile's and `README.md`'s logo is the light/dark `<picture>` pair, so it reads in both GitHub themes; the brand icons in **Our Activity** do the same, and every image has alt text
- **Our Brands** and **Our Activity** follow the Stux.Group website's brand order (Stuxedo, Stux.Dev, Stux.Cloud, StuxAPIs, Stux.Music, Stux.Digital, Stux.Design, Stux.Games), then Ream.st and Gaymer.Social
- The status page is listed by its full name, **Stux.Group Status**
- `commit.sh` and `commit.bat` suggest pushing to `test`, not `main`
- `CONTRIBUTING.md`'s footer names every Stux.Group brand

## v26.10.23

### Added
- `tests/run.sh`, a dependency-free check (`bash tests/run.sh`) that `VERSION.md` is a valid Date Version, a real calendar date, and matches the newest `## v...` heading in this changelog
- `commit.sh` and `commit.bat` now refuse a `VERSION.md` that isn't a Date Version, isn't a real calendar date or is dated after today (UTC), and warn when it's dated before today

### Changed
- Switched from Semantic Versioning (last release v1.3.1) to [Date Versioning](https://datevers.ing): versions are now the UTC release date as `YY.MM.DD`, plus `-1`, `-2`... for later releases that day. This project follows Date Versioning from this release on
- `README.md` has a new **Versioning** section, and its **Releasing** steps describe Date Versions and the new tests
- `CONTRIBUTING.md` now points contributors to each repository's README for its own versioning, tests and release steps

## v1.3.1

### Changed
- Ream.st and Gaymer.Social moved from **Our Brands** to **Our Services** in `profile/README.md`, since they're services rather than brands. Ream.st sits just above its Multi.st Twitch and YouTube viewers; Gaymer.Social, discontinued, is last

## v1.3.0

### Added
- Stux.Cloud, StuxAPIs, Stux.Digital, Stux.Design and Stux.Games in the **Our Brands** table of `profile/README.md`, alongside Stux.Dev, Stuxedo, Stux.Music, Ream.st and Gaymer.Social

## v1.2.0

### Added
- A **Service Status** section in `profile/README.md` with a live status table (each service's group, status, uptime and response time, linking to [status.stux.group](https://status.stux.group)), kept up to date hourly by the new `.github/workflows/status.yml` using GitHup's `readme` mode and the data in `StuxGroup/Status`

### Changed
- The "Our Services" table is split in two: **Our Services** (Stux.Group, Stux.Group Services, Status, GitHup, Multi.st Twitch and Multi.st YouTube) and a new **Our Brands** (Stux.Dev, Stuxedo, Stux.Music, Ream.st and Gaymer.Social)
- The status badge moved from a one-line "Service status" note into the new **Service Status** section

## v1.1.0

### Added
- A live **Service status** badge in `profile/README.md`, read from the new [status.stux.group](https://status.stux.group) (`StuxGroup/Status`), with a link to the status page
- More services in the "Our Services" table: Stux.Group Services, Status, Stux.Dev, Stuxedo and Stux.Music; the Ream.st row now links to Multi.st Twitch and YouTube

### Changed
- `generateMetrics.yml`'s three `gh-metrics/metrics` steps now all pin the same, latest commit (`b594ca3`), replacing two older pins (one 26 commits behind)
- `README.md` rewritten to describe what this repository actually contains (the profile, the default `CONTRIBUTING.md`, the metrics workflow and the release scripts), replacing a generic description of issue templates, a code of conduct and a security policy that don't exist here

## v1.0.9

### Added
- GitHup added to the "Our Services" table in `profile/README.md`, linking to its website, [githup.stux.group](https://githup.stux.group)

## v1.0.8

### Changed
- CHANGELOG sections reordered to Added, Changed, Fixed, Removed, Security, Deprecated

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

### Changed
- Renamed "Our Projects" to "Our Services" (Stuxs.Tools/Downl.one weren't the only stale entries — this table is for direct Stux Group Ltd services, not every brand under the group), and added Ream.st, which was missing.

### Fixed
- `profile/README.md`'s "Our Projects" table still listed Stuxs.Tools and Downl.one as direct Stux.Group projects — they're now operated by Stux.Dev, not Stux.Group directly, so they were removed from this table.

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
