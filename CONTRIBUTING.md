# Contributing to Stux.Group

Thank you for your interest in contributing to Stux.Group projects! We welcome contributions from everyone and appreciate your effort in helping us improve.

## Getting Started

1. **Fork the repository** you want to contribute to.
2. **Clone your fork** locally and create a new branch for your changes.
3. **Make your changes**, ensuring they follow the guidelines below.
4. **Submit a pull request** with a clear description of what you've changed and why.

## Code of Conduct

By participating in any Stux.Group project, you agree to uphold our community standards. We expect all contributors to be respectful, constructive, and inclusive in all interactions.

## How to Contribute

### Reporting Bugs

- Check existing issues to avoid duplicates before opening a new one.
- Provide a clear title and description, steps to reproduce, and the expected vs. actual behaviour.
- Include your environment details (OS, language/runtime version, etc.) where relevant.

### Suggesting Features

- Open an issue with the label `enhancement` and describe your idea clearly.
- Explain the problem it solves and any alternatives you've considered.

### Submitting Pull Requests

- Keep pull requests focused — one change or fix per PR.
- Write clear, descriptive commit messages.
- Update documentation if your change affects behaviour or usage.
- Ensure your changes do not break existing functionality.
- Link any related issues in your pull request description.
- Check the repository's README for its own versioning scheme, tests and release steps (many Stux.Group projects use [Date Versioning](https://datevers.ing)), and run its tests before opening a pull request.

## Style Guidelines

- Follow the coding conventions already present in the repository.
- Keep code clean, readable, and well-structured.
- Avoid introducing unnecessary dependencies.

## Branches and going live

- **`main` is what's live.** Nothing is pushed to it directly: it only changes when a pull request from `staging` is
  merged.
- **`staging` is the last check before live.** It only changes when a pull request from `test` is merged.
- **Work happens on `test`**, or on a feature branch off `test` that's merged back into it. Releases are made on `test`
  too; `commit.sh` / `commit.bat` refuse to run on `staging` or `main`.
- **Going live:** push `test` with its tag (`git push origin test --tags`), open a pull request into staging
  (`gh pr create --base staging --head test`), check staging once it's merged, then open one from staging into main
  (`gh pr create --base main --head staging`). CI runs on both pull requests; Leo reviews and merges them.
- **Deploys:** Merging the pull request into `main` updates the organization profile and the default community files. Merging into `staging` doesn't deploy anything.

## Questions

If you have any questions, feel free to reach out at [hello@stux.group](mailto:hello@stux.group) or open a discussion in the relevant repository. For legal, privacy, or copyright inquiries, contact [legal@stux.group](mailto:legal@stux.group) instead.

---

We appreciate every contribution, no matter how small. Thank you for helping make Stux.Group better!

*Stux.Group is the parent of the Stux.Group Brand of Companies: [Stuxedo](https://github.com/Stuxedo), [Stux.Dev](https://github.com/StuxDev), [Stux.Cloud](https://github.com/StuxCloud), [StuxAPIs](https://github.com/StuxAPIs), [Stux.Music](https://github.com/StuxMusic), [Stux.Digital](https://github.com/StuxDigital), [Stux.Design](https://github.com/StuxDesign) and [Stux.Games](https://github.com/StuxGames).*
