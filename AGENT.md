# Agent Guide

## What this repo is
- Static build of the Homer dashboard (fork of bastienwirtz/homer) with custom links and theme tweaks.
- Main content lives in `assets/config.yml`; everything else under `js/`, `css/`, `fonts/`, and `assets/` is prebuilt output.
- `index.html` + `service-worker.js` expect the files to be served over HTTP; opening the file directly from disk may not load assets because of browser CSP and service worker rules.

## How to run/test locally
- Node/npm (cross-platform): `npx serve . --listen 8080` then open http://localhost:8080. You do not need a `package.json` because `npx` will fetch the static server on demand.
- Alternative Node: `npx http-server -p 8080 .` if you prefer that package.
- Python: `python3 -m http.server 8080` (or `py -m http.server 8080` on Windows) from the repo root.
- If you already ran the site before, consider a hard refresh or an incognito window to avoid stale service-worker caching.

## Editing guidance
- Edit only `assets/config.yml` (or copy from `assets/config.yml.dist`) for links, sections, and theming. Keep YAML indentation consistent.
- Add custom icons or logos under `assets/` and reference them in the YAML.
- Avoid editing the compiled JS/CSS unless you intend to rebuild upstream; if you do, document the build source and version.

## Updating icons and subtitles
- Favicons: logos live under `assets/icons/favicons/`. If you add new links, fetch favicons with `https://www.google.com/s2/favicons?sz=128&domain_url=<url>` and save as `assets/icons/favicons/<domain>.png`. Keep Ninite on its custom icon.
- Subtitles: to refresh them automatically, fetch each site’s `<meta name="description">` and replace the subtitle when the description is longer/more informative than what’s in `assets/config.yml` (skip obvious error/404 pages).
- If a site lacks a usable favicon or description, fall back to `assets/icons/box.png` and keep the existing subtitle.

## Quick validation checklist
- YAML parses: ensure `assets/config.yml` stays valid (avoid tabs; keep quoting URLs with special characters).
- Local run works at http://localhost:8080 in a fresh tab/private window.
- Links open in new tabs where expected and assets (logos/icons) load without 404s.
