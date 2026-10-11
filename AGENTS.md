# Repository instructions

## Environment

- Develop inside the devcontainer in `.devcontainer/`.
- Use the VS Code Codex extension; do not install or configure Codex CLI.
- This is a static CV site. Do not introduce GPU tooling or uv.
- No build step is needed. GitHub Pages publishes `docs/` from the `main` branch.
- Use `make serve` to preview `docs/` on port 8000.

## Repository conventions

- Keep the site entry point at `docs/index.html`.
- Keep public styles, images, and documents under `docs/assets/`.
- Publish at the domain root (`https://kaisugahara.github.io/`).
- Use relative asset URLs so the site works at the domain root and locally.
- Keep all public files under `docs/` and all development files outside it.
- Keep `docs/.nojekyll` to disable Jekyll processing.
- Do not invent CV facts. Ask for missing career, education, or contact details.
- Never commit secrets, `.env`, or Codex authentication data.
- Verify changed pages and assets with `make serve` and run `git diff --check`.
