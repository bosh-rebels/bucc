### Breaking Changes:
Since Concourse 4.1 has completely changed it's authentication implementation,
there are some team configurations that can result in a failing upgrade.
Since BUCC does not configure multiple teams this will not affect you,
unless you created teams yourself, in which case please check the [Concourse release notes](https://concourse-ci.org/download.html#v400)

In general it is always recommended to do a `bucc bbr backup` before upgrading.

### Mayor Improvments
- Switched to Xenial stemcell
- Upgraded to Concourse 4.1.
- The BOSH related processes are now using [bpm](https://github.com/cloudfoundry-incubator/bpm-release)
  for improved isolation.

### Small Improvments:
- Added check if internet connection is available (thanks to @teancom)
- Added support for the [uaa go cli](https://github.com/cloudfoundry-incubator/uaa-cli) (thanks to @drnic)
- Showing concourse on uaa homepage (thanks to @drnic)
- Added global --concourse-ca-certs flag for trusted ca certs (thanks to @fenech)
- Added ability to unset BUCC related environment variables with `source <(bucc env --clean)`

### Fun Facts
- As of this release bucc uses a bucc deployed concourse for it's [ci pipeline](https://ci2.starkandwayne.com/teams/starkandwayne/pipelines/bucc)