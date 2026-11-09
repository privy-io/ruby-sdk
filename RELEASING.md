# Releasing

Releases are cut by [release-please](https://github.com/googleapis/release-please) in the
private `privy-io/ruby-sdk-private` repo, then promoted to the public
[`privy-io/ruby-sdk`](https://github.com/privy-io/ruby-sdk) repo, which publishes to RubyGems.
Tags are `vX.Y.Z`.

Public `main` only moves when a release is promoted, so it always matches the latest stable
release.

## Stable releases (from `main`)

1. 👤 Merge changes into `main` in `ruby-sdk-private`.
2. 🤖 On every push to `main`, release-please opens or updates the release PR (`release: X.Y.Z`)
   in `ruby-sdk-private`.
3. 🤖 CI adds a **release proposal** comment to the release PR: the source commit and a
   compare link from the last published tag. Use it to review exactly what ships.
4. 👤 Approve and merge the release PR.
5. 🤖 CI runs the [release workflow](./.github/workflows/release-please.yml), which tags
   `vX.Y.Z` and creates the GitHub Release in `ruby-sdk-private`.
6. 🤖 The release triggers the [promote workflow](./.github/workflows/stlc-promote.yml), which:
   - fast-forwards `main` in `ruby-sdk` to the tag commit;
   - pushes the tag to `ruby-sdk`;
   - creates the matching GitHub Release in `ruby-sdk`, which triggers the
     [publish gem workflow](./.github/workflows/publish-gem.yml) there.
7. 👤 Update the changelog in [our public docs](https://docs.privy.io).

The public release notes link to `ruby-sdk` commits and leave out PR numbers, since those
refer to private PRs.
