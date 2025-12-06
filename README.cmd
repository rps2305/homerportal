Homer Portal
============

Overview
--------
Static build of the Homer dashboard with custom links and theming. The page reads its configuration from `assets/config.yml` and serves prebuilt assets from `js/`, `css/`, and `assets/`.

Prerequisites
-------------
- Node 18+ with npm (for `npx`), or
- Python 3.x (built-in HTTP server)

Run locally with npm/Node
-------------------------
1. Open a terminal in the repo root.
2. Start a static server: `npx serve . --listen 8080` (or `npx http-server -p 8080 .`).
3. Visit http://localhost:8080 in your browser.

Run locally with Python
-----------------------
1. Open a terminal in the repo root.
2. Start the server: `py -m http.server 8080` (Windows) or `python3 -m http.server 8080` (macOS/Linux).
3. Visit http://localhost:8080.

Testing notes
-------------
- Use a hard refresh or an incognito window to avoid cached service-worker content.
- Confirm `assets/config.yml` loads without YAML errors and that logos/icons referenced in the file exist under `assets/`.
