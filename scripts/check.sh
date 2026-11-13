#!/usr/bin/env bash
# Gate for the profile README. Usage: scripts/check.sh
# Checks: README.md structure, every link answers, no private details, banned wording.
# Prints GATE: PASS on success and GATE: FAIL otherwise.
set -euo pipefail
cd "$(dirname "$0")/.."
trap 'rc=$?; [ "$rc" -eq 0 ] || echo "GATE: FAIL"' EXIT

echo "==> README.md exists and has the expected sections"
[ -s README.md ]
grep -q '^# ' README.md
grep -q '^## Projects' README.md
grep -q '^## Contact' README.md

echo "==> no private details or banned wording"
# Sign-up address, Korean phone and resident-number shapes, and wording the owner banned.
if grep -nEi 'michaelju0418|01[016789][- ]?[0-9]{3,4}[- ]?[0-9]{4}|[0-9]{6}-[1-4][0-9]{6}|cohort 3|sports briefing' README.md; then
  echo "private detail or banned wording found" >&2
  exit 1
fi

echo "==> every http(s) link answers below 400"
UA='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0 Safari/605.1.15'
fetch() { curl -sS -o /dev/null -L --max-time 20 -A "$UA" -w '%{http_code}' "$1" || echo 000; }
fail=0
for url in $(grep -oE 'https?://[^) >"]+' README.md | sort -u); do
  code=$(fetch "$url")
  # A 429 is rate limiting, not a dead link: wait and ask once more.
  if [ "$code" = "429" ]; then sleep 10; code=$(fetch "$url"); fi
  echo "$code $url"
  if [ "$code" -ge 400 ] || [ "$code" = "000" ]; then fail=1; fi
done
[ "$fail" -eq 0 ]

echo "GATE: PASS"
