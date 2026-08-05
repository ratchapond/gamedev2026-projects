# Game Lab 4: 2D Platformer Game
By 673380530-5 รัชชานนท์ คงเอม
- **Game Story** - Players step into the shoes of a Wizard on an adventurous quest. Use magical staff spells and fireballs to defeat goblins and orcs, dodge crushing traps, collect precious gems and health potions, and make your way to the portal leading to the next realm.
# Dungeon Treasure Hunter

This starter kit provides all the essential mechanics needed to build a complete 2D platformer game in Godot 4.7. It is designed as a hands-on learning resource for students taking the **Computer Game Development** course at the **College of Computing, Khon Kaen University**.

## Preview

<img src="docs/qrcode.png" style="width:300px;" />

- [Game Preview](https://computingkku.github.io/2D-Platformer-Starter-Kit/)


## Features

**4 Hand-Crafted Dungeon Levels** — Explore 4 unique dungeon levels filled with increasing difficulty, traps, and enemies.
- **Weapon System** — Slash monsters or shoot projectiles (Crossbow/Magic) to defeat dungeon guards.
- **Traps & Interactive Objects** — Navigate through dangerous Lava Pits, Spinning Blades, Moving Platforms, Elevator, JumpBoards, and Portal Gates.
- **Items & Buffs** — Collect Coins and Gems for score, Hearts for HP, and Potions for Speed and Jump boosts.
- **Parallax Backgrounds** — Immersive multi-layered dungeon backgrounds.
- **Win/Game Over System** — Custom Win/Game Over screens with victory music and treasure animation.

## Getting Started

1. Open the project in [Godot 4.7](https://godotengine.org/) or later.
2. Press **F5** or click **Play** to run the main menu.
3. Use **A/D** or **Left/Right** to move, **Space** to jump, and **X** to shoot.
4. On mobile or web, use the on-screen buttons at the bottom of the screen.
5. Collect coins, defeat enemies, avoid traps, and reach the door to finish each level.

## Project Structure

```
Scenes/
├── Actors/           # Player, enemies, and spawners
├── Levels/           # Level scenes, base level template, and UI
├── Managers/         # GameManager, SceneTransition, AudioManager
└── Prefabs/          # Reusable objects (bullet, coin, potion, door, button)

Assets/
├── Fonts/            # Custom fonts
├── Icons/            # UI icons
├── Sound/            # BGM and SFX
├── Spritesheet/      # Character and tile sprites
└── Textures/         # Particle and effect textures
```

## Controls

| Input | Action |
|-------|--------|
| A / Left Arrow | Move left |
| D / Right Arrow | Move right |
| Space / S | Jump |
| X | Shoot |
| On-screen buttons | Mobile and web touch controls |

## Inspector Tips

- **Player**: Toggle `double_jump` to enable double jump. Adjust `move_speed`, `jump_force`, `shoot_cooldown_time`, and `bullet_lifetime` directly in the inspector.
- **Enemy Spawner**: Configure `enemy_scenes`, `speed_range`, `respawn_time`, and `max_instance` to control enemy behavior and density.
- **Bullet**: Adjust `speed` and `lifetime` to change projectile feel.

## Saving

- Press the **Save** button in the top-right corner to save your progress.
- The game saves the player's position, score, lives, and audio settings.

## Credits

**Original Developer**
- [AdilDevStuff](https://github.com/AdilDevStuff) — [2D-Platformer-Starter-Kit](https://github.com/AdilDevStuff/2D-Platformer-Starter-Kit)

**2D Assets**
- [Kenney.nl](https://www.kenney.nl/)
- [craftpix.net](https://craftpix.net/)
- [Ravenmore](https://ravenmore.itch.io/)
- [Icons8.com](https://icons8.com)

**Sound Effects**
- GDFXR (Sfxr plugin for Godot)

**Modified for Educational Use By**
- College of Computing, Khon Kaen University
