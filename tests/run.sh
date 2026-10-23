#!/bin/bash
# Stux.Group .github - dependency-free checks. Run with: bash tests/run.sh
# This repository uses Date Versioning (https://datevers.ing): the UTC release
# date as YY.MM.DD, plus -1, -2... for later releases the same day.
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PASS=0
FAIL=0
ok()   { PASS=$((PASS + 1)); echo "ok   - $1"; }
fail() { FAIL=$((FAIL + 1)); echo "FAIL - $1"; }

# The spec's own pattern (2000-2099 form); calendar validity is checked separately.
DATEVER='^[0-9]{2}\.(0[1-9]|1[0-2])\.(0[1-9]|[12][0-9]|3[01])(-[1-9][0-9]*)?$'

# True when YY.MM.DD is a real Gregorian date (20YY).
real_date() {
    local yy mm dd days
    IFS=. read -r yy mm dd <<< "$1"
    yy=$((10#$yy)); mm=$((10#$mm)); dd=$((10#$dd))
    case $mm in
        1|3|5|7|8|10|12) days=31 ;;
        4|6|9|11) days=30 ;;
        2) local y=$((2000 + yy))
           if (( (y % 4 == 0 && y % 100 != 0) || y % 400 == 0 )); then days=29; else days=28; fi ;;
        *) return 1 ;;
    esac
    (( dd >= 1 && dd <= days ))
}

VERSION="$(tr -d '[:space:]' < "$DIR/VERSION.md")"

if [[ "$VERSION" =~ $DATEVER ]]; then
    ok "VERSION.md ($VERSION) is a Date Version"
else
    fail "VERSION.md ($VERSION) is not a Date Version (YY.MM.DD or YY.MM.DD-N)"
fi

if real_date "${VERSION%%-*}"; then
    ok "VERSION.md ($VERSION) is a real calendar date"
else
    fail "VERSION.md ($VERSION) is not a real calendar date"
fi

NEWEST="$(tr -d '\r' < "$DIR/CHANGELOG.md" | sed -n 's/^## v\([^[:space:]]*\).*/\1/p' | head -n 1)"
if [[ "$NEWEST" == "$VERSION" ]]; then
    ok "the newest CHANGELOG.md entry (v$NEWEST) is the version in VERSION.md"
else
    fail "the newest CHANGELOG.md entry is v$NEWEST, but VERSION.md holds $VERSION"
fi

# Self-checks for the helpers above, so a broken check can't pass silently.
for v in 26.10.22 26.10.22-1 26.02.28 28.02.29; do
    if [[ "$v" =~ $DATEVER ]] && real_date "${v%%-*}"; then ok "accepts $v"; else fail "should accept $v"; fi
done
for v in 3.15.0 26.02.30 26.02.29 26.10.22-0 26.10.1 v26.10.22 26.13.01 26.10.22-01; do
    if [[ "$v" =~ $DATEVER ]] && real_date "${v%%-*}"; then fail "should reject $v"; else ok "rejects $v"; fi
done

echo "$PASS passed, $FAIL failed"
[[ $FAIL -eq 0 ]]
