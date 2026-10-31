# 🐅 Carnage: Tiger & Zebra 🦓

A bright, fast browser chase game about a Tiger hunting Zebras, herd mates rescuing one another, and a team racing to bank forest leaves. Play Normal, Survival, or online Multiplayer from a browser on Windows, Android, or other modern devices.

![Carnage: Tiger & Zebra](images/tiger-zebra-cover.svg)

## Play locally

- **Windows:** double-click `Run-Game.cmd`; it starts the room server and opens the game.
- **Quick solo play:** open `index.html` in a modern browser. Normal and Survival run directly from the file.
- **Online Multiplayer:** host the Node server on a public HTTPS service (for example, Render), then share its HTTPS link. Players on different networks join Quick Match or connect to a room code/link.

## Game modes

### Normal

Classic full-arena chase. Pick Tiger to hunt the Zebra team, or choose Zebra and work with AI herd mates. Catching freezes a Zebra; active herd mates can rescue them. In this mode, Tiger also wins at time-up if at least two Zebras remain frozen. If the whole Zebra team is caught and nobody can use the team break-free, Tiger wins immediately.

### Survival

Zebras start in small, separated forest groves. Each grove shelters **one Zebra**; if another Zebra enters the same grove, both lose protection and Tiger can hunt them there. Tigers cannot enter an empty or singly occupied safe grove. A caught group on one grove is moved into the forest for rescue. Zebra bots forage leaves, rescue herd mates, and flee or return to safety.

One glowing leaf patch is active at a time. A fresh patch appears every 30 seconds and replaces the missed one. Collect leaves and carry them to a grove to bank **six of eight** before the final patch expires; finish with every Zebra free to win. One team-wide Zebra break-free can be used if an eligible player has 70% energy; otherwise the all-caught team loses. Zebra gains 50% energy per rescue and 10% per leaf, loses 5% when caught, and uses 70% to break free. Tiger has a separate team meter: freezes charge 30%, spent for a 40% speed burst.

### Multiplayer

Up to **8 characters** share a room: at most **2 Tigers** and **6 Zebras**. At least two human players are needed to start, with one person on each team. The host chooses the total room size in the lobby; AI teammates fill open slots after the humans are assigned. Everyone can ready up, and the host can start once both teams are represented. Team win conditions follow the selected match rules; individual scoreboards rank Tigers by freezes and Zebras by leaves and rescues.

- **Quick Match** finds a shared internet room.
- **Create Room** makes a private room and gives you a shareable invite link/code; optional passcodes are supported.
- **Connect Room** joins using the host’s link or room code and passcode, if set.

Internet play requires a reachable shared server. For local same-Wi-Fi play, clients open the host’s LAN address and port `8787`. Opening the HTML file by itself does not create an internet server.

## Controls

- Move with **WASD** or the **arrow keys**; on touch screens, drag in the arena.
- Use power with **Space** (or the on-screen power button on Android).
- Pause with **P** or the pause button.

## Hosting the room server

Install Node.js 20 or newer, then run `npm start` in this folder. The server listens on port `8787`. For a public multiplayer link, deploy this repository to a Node hosting provider and set its start command to `npm start`; share the generated HTTPS URL. A free host may sleep while idle, so its first connection can take a little longer.

## Files

- `index.html` — self-contained game, guide, art, UI, and client code.
- `server.js` — real-time room server and multiplayer bot/game state.
- `Run-Game.cmd` — Windows launcher for local hosting.
- `Start-Remote-Tunnel.cmd` — optional tunnel helper for temporary remote testing.
- `images/tiger-zebra-cover.svg` — project cover image used here.

The forest reskin keeps the original game mechanics and uses the existing `ice`/`water` team values internally for compatibility. Players only see Tiger and Zebra names in-game.
