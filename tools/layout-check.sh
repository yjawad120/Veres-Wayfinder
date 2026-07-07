#!/bin/sh

missing=0

if [ -f "./PROTOCOL.md" ] && [ -f "./README.md" ]; then
  wf_root="."
elif [ -f "./wayfinder/PROTOCOL.md" ] && [ -f "./wayfinder/README.md" ]; then
  wf_root="./wayfinder"
else
  echo "layout INCOMPLETE: no Wayfinder install found (expected PROTOCOL.md and README.md in . or wayfinder/)"
  exit 1
fi

check_file() {
  label=$1
  if [ -f "$wf_root/$label" ]; then
    printf 'OK %s\n' "$label"
  else
    printf 'MISSING %s\n' "$label"
    missing=$((missing + 1))
  fi
}

check_dir() {
  label=$1
  if [ -d "$wf_root/$label" ]; then
    printf 'OK %s\n' "$label"
  else
    printf 'MISSING %s\n' "$label"
    missing=$((missing + 1))
  fi
}

check_soft_file() {
  label=$1
  if [ -f "$wf_root/$label" ]; then
    printf 'OK %s\n' "$label"
  else
    printf 'WARN %s missing\n' "$label"
  fi
}

check_soft_dir() {
  label=$1
  if [ -d "$wf_root/$label" ]; then
    printf 'OK %s\n' "$label"
  else
    printf 'WARN %s missing\n' "$label"
  fi
}

check_index() {
  label="line/INDEX.md"
  path="$wf_root/$label"

  if [ ! -f "$path" ]; then
    printf 'WARN %s missing\n' "$label"
    return
  fi

  if grep '^|' "$path" \
    | grep -vi 'your first run goes here' \
    | grep -Ev '^\|[[:space:]]*run[[:space:]]*\|' \
    | grep -Ev '^\|[[:space:]:|-]+\|[[:space:]:|-]*$' >/dev/null 2>&1; then
    printf 'OK %s\n' "$label"
  else
    printf 'EMPTY %s (WARN: no data rows)\n' "$label"
  fi
}

check_file "PROTOCOL.md"
check_file "README.md"
check_file "lineage.md"
check_dir "line"
check_file "line/templates/packet.md"
check_file "line/templates/run-log.md"
check_file "line/templates/scratchpad.md"
check_dir "adapters"

check_dir "line/packets"
check_dir "line/answers"
check_dir "line/gradings"
check_dir "line/runs"
check_dir "line/sessions"
check_dir "line/scratchpads"

check_index
check_soft_file "USER-GUIDE.md"
check_soft_dir "evidence"

if [ "$missing" -eq 0 ]; then
  echo "layout OK"
  exit 0
fi

echo "layout INCOMPLETE: $missing missing"
exit 1
