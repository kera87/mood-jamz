#!/bin/bash
# Album of the Day — local dev server

PORT=3000
DIR="$(cd "$(dirname "$0")" && pwd)"

echo ""
echo "  🎵  Album of the Day"
echo "  ─────────────────────────────"
echo "  Running at → http://localhost:$PORT"
echo "  Press Ctrl+C to stop"
echo ""

# Open browser after a short delay
(sleep 0.8 && open "http://localhost:$PORT") &

# Start Python HTTP server
cd "$DIR" && python3 -m http.server $PORT
