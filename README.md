# Ink Stories — Web Player

Interactive fiction stories written in [Ink](https://www.inklestudios.com/ink), with a custom responsive web player.

**Live:** https://mumblequatch.github.io/ink-stories/

## Creating a New Story

### 1. Write the story in Inky

Use [Inky](https://github.com/inkle/inky/releases) to write your `.ink` file. Scene titles use the em-dash format and are auto-detected:

```
— Scene Title —
```

### 2. Export to JavaScript

In Inky: **File > Export story.js only...**

This produces a `.js` file (e.g., `my_story.js`) containing a `storyContent` variable.

### 3. Set up the web player

Copy the `web-template/` directory and customize:

```
cp -r web-template/ my-story-web/
```

Edit `my-story-web/index.html`:
- Replace `STORY_TITLE` (2 places) with your story title
- Replace `STORY_FILE.js` with your exported `.js` filename

```html
<title>My Story Title</title>
...
<h1>My Story Title</h1>
...
<script src="my_story.js"></script>
```

Copy your exported `.js` file into the directory:

```
cp my_story.js my-story-web/
```

### 4. Test locally

Open `my-story-web/index.html` in a browser, or serve via:

```
python3 -m http.server 8787 --directory my-story-web/
```

### 5. Deploy to GitHub Pages

Push the web player files to a `docs/` directory in a **public** GitHub repo, then enable Pages:

```bash
# Enable Pages from /docs on main branch
gh api repos/OWNER/REPO/pages -X POST \
  -f "build_type=legacy" \
  -f "source[branch]=main" \
  -f "source[path]=/docs"
```

## Template Files

| File | Purpose |
|------|---------|
| `web-template/index.html` | HTML shell — edit title and story script reference |
| `web-template/style.css` | Responsive dark theme (Atkinson Hyperlegible, 18px/22px mobile) |
| `web-template/main.js` | Ink web player engine (scene clearing, crossfade transitions, save/load) |
| `web-template/ink.js` | Ink runtime (inkjs) — do not modify |

## Design Details

- **Typography:** Atkinson Hyperlegible via Google Fonts, 18px base / 22px on mobile (≤600px)
- **Layout:** max-width 38em, centered, dark background (rgb 32,32,32)
- **Choices:** cyan links (rgb 1,192,252), centered, hover to white
- **Transitions:** 0.3s crossfade between scenes, staggered paragraph fade-in (200ms per paragraph)
- **Scene titles:** auto-detected via `— Title —` pattern, centered and bold
- **Controls:** restart / save / load / theme toggle (fixed header)
- **Responsive:** mobile breakpoint at 980px for controls layout, 600px for font scaling
- **Accessibility:** respects `prefers-reduced-motion`, `-webkit-font-smoothing: antialiased`

## Ink Tags Supported

- `# author: Name` — sets byline
- `# theme: dark` — sets default theme
- `# CLASS: classname` — adds CSS class to paragraph
- `# IMAGE: url` — inserts image
- `# AUDIO: url` — plays one-shot audio
- `# AUDIOLOOP: url` — plays looping audio
- `# BACKGROUND: url` — sets background image
- `# LINK: url` — navigates to URL
- `# LINKOPEN: url` — opens URL in new tab
- `CLEAR` tag — clears all content
- `RESTART` tag — restarts story
