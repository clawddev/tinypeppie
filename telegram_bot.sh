#!/usr/bin/env bash
TOKEN=$(cat /data/.openclaw/workspace/telegram_token.txt)
OFFSET_FILE=/data/.openclaw/workspace/telegram_offset.txt
LOG=/data/.openclaw/workspace/telegram_log.json
[ -f "$OFFSET_FILE" ] || echo 0 > "$OFFSET_FILE"
OFFSET=$(cat "$OFFSET_FILE")
while true; do
  resp=$(curl -s "https://api.telegram.org/bot${TOKEN}/getUpdates?timeout=60&offset=$OFFSET")
  echo "$resp" >> "$LOG"
  # update offset if there are results
  ok=$(echo "$resp" | jq '.ok')
  if [ "$ok" = "true" ]; then
    cnt=$(echo "$resp" | jq '.result | length')
    if [ "$cnt" -gt 0 ]; then
      last=$(echo "$resp" | jq '.result[-1].update_id')
      OFFSET=$((last+1))
      echo $OFFSET > "$OFFSET_FILE"
    fi
  fi
  sleep 0.5
done
