# ❄️ Frostfall: Ice vs Water — Freeze Chase

**Chase the crystals. Rescue your crew. Outrun Frost.**

A colorful, browser-based team game for Windows and Android. Play solo with AI teammates, or host human-only multiplayer rooms from the included Node.js server. No account or game installation is required to play in a browser.

> **Version 3** · One self-contained HTML game · Windows + Android · Normal, Survival, and Multiplayer

---

## 🎮 Pick your mode

| Mode | Players | The challenge |
|---|---|---|
| **Normal** | You + AI | Classic arena chase. Frost hunts anywhere; Water rescues frozen teammates. |
| **Survival** | You + AI | Cross Frozen Land for crystals, bank six, and get your whole Water team home free. Islands protect one Water player each; crowded islands can become dangerous. |
| **Multiplayer** | 2–8 humans | Team up as up to **2 Frost** and **6 Water**. No bots join online rooms. Play in a Quick Match queue or create a private room. |

### Survival crystal run

The four-minute round has **eight chances** to collect crystals. One crystal appears at 0:00, then a new one arrives every 30 seconds through 3:30, replacing the previous one. Collect and bank at least six. The final crystal disappears at 3:45; if fewer than six are banked, Frost wins. Water also needs every teammate free when time runs out. Frost can hunt Water on Frozen Land and on crowded islands.

### Powers and scoring

Water gains energy from rescues and crystals. Frost has a separate meter and can spend energy to burst into a faster chase. Rescued Water players blink with temporary freeze protection. The end-of-round card ranks Frost and Water players separately: Frost scores for freezes; Water scores for crystals and rescues.

---

## ▶️ Play on your computer

### Solo game

1. Open `index.html` in Chrome, Edge, or Firefox.
2. Choose **Normal** or **Survival**, then choose Frost or Water.
3. Move with **WASD** or the **arrow keys**. Press **Space** to use an available power, and **P** to pause.

### Multiplayer on the same network

1. Install Node.js on the Windows host computer if it is not already installed.
2. Run `Run-Game.cmd` from this folder and keep its server window open.
3. Open the host computer’s Wi-Fi or hotspot address on the other devices, using port **8787**.
4. In Multiplayer, create a private room and share the room link. Guests open it, choose a team, and connect. For a lobby, everyone must be ready and both teams must be represented.

If Windows Firewall asks, allow Node.js on the private network. Some phone hotspots block device-to-device traffic; a laptop hotspot or shared Wi-Fi network may work better.

### Multiplayer over the Internet

The room server must be hosted at a public HTTPS address that every player can reach. For a temporary host-laptop session, run `Run-Game.cmd` and `Start-Remote-Tunnel.cmd`, then share the tunnel URL. The host computer and tunnel must stay running.

For a persistent public link, deploy this folder as a **Node.js Web Service** (not a static site). The included server serves both the game and multiplayer API from the same origin. See **Deploy on Render** below.

> Browser Bluetooth multiplayer is **not implemented**. Use Wi-Fi / hotspot or the Internet room server.

---

## ☁️ Deploy on Render

1. Put the **contents of this folder** in the root of a GitHub repository and push to the `main` branch.
2. In Render, select **New → Web Service**, connect GitHub, and choose the repository.
3. Configure the service:

   | Setting | Value |
   |---|---|
   | Runtime | Node |
   | Build command | `npm install` |
   | Start command | `npm start` |
   | Instance | Free for a demo, if available |

4. Deploy. When Render reports **Live**, open the provided `https://…onrender.com` URL. That same URL is the game page and multiplayer server.
5. Test with two devices: create a room on one, join with the invite on the other, select teams, ready up, and play.

The free service may sleep when idle and take about a minute to wake. Active matches can be interrupted by a service restart. This is suitable for demos and testing, not guaranteed always-on hosting. See [Render’s free service limits](https://render.com/docs/free) and [Node deployment guide](https://render.com/docs/deploy-node-express-app).

---

## 📱 Play on Android

- For Normal and Survival, open `index.html` in a browser that can load local HTML files, or use the published website link.
- For multiplayer, use the host’s reachable server address or the public Render link. Select a team and use touch controls in the arena.
- Google Drive’s file preview does not run HTML games; download the file and open it in a browser, or use the deployed website link.

---

## 📂 What’s in this folder

- `index.html` — game, animated arena, controls, and in-page visual guide
- `server.js` — Node.js server for rooms, matchmaking, and synchronized multiplayer
- `package.json` — Node start command used by Render
- `Run-Game.cmd` — starts the local Windows server and opens Multiplayer
- `Start-Remote-Tunnel.cmd` — optional temporary Internet tunnel helper
- `README.md` — this guide

## 🧊 Current limitations

- Multiplayer requires a reachable server; opening the HTML file by itself only supports the bot modes.
- Quick Match is shared only among players connected to the same server.
- Bluetooth direct play is not available in this browser version.
- Free hosting can sleep or restart; no always-on or uninterrupted match service is promised.

---

**Have fun, watch the shoreline, and don’t leave your teammates frozen.**
