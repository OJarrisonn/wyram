Wyram

The sun vanished, maybe you're the hero who can save everything.

Wyram is a survival game, where the player needs to survive in the dark and chalenging Dead Earth in order to defeat Umbrea.

## Lore

About a hundred years ago, Yukkl Trlla, the most powerful sorcerer of Nyhhay praticed a forbidden spell in order to be even more powerful. The things when bad, and Trlla got possessed by Umbrea, the darkness entity.

In a couple days Umbrea built the Obscurum Obelisc, which created a huge dark cover over the entire planet. After that, Umbrea's sons, the Tenebres where free to walk over the surface without being hurted by sun/moon light. This event became known as Terminus.

They started possessing every living being. But, luckly, three main cities survived: Glau, Yuhhay and Qhaarf. Their people quickly built defenses and powerful light sources that keep the Tenebres away.

The mankind is now down to a couple hundreds of people and is up to you try to save mankind from the complete extinguition.

## The Cities

There are 3 cities in the game:

### Glau

Glau is a technopunk city, where their best engineers built defense systems and the Piraira, a powerful energy generator which keeps the city bright and the monsters away.

### Yuhhay

The city that where sister of Nyhhay before Terminus. Yuhhay sorceres completely banned any kind of black magic. Now the city is protected by a purifing spell called Kallun and enlights the city.

### Qhaarf

The city inside the Jumonth's head (a lengendary giant dragon, the biggest being ever). The qhaarfi built their defenses with the indestructible bones of Jumonth and keep themselves safe and closed inside the city for ages.

## Project Organization

The project is splited into three main parts: `app` (the godot project), `lib` (the rust source code) and `res` (the visual elements).

### Platforms and Versions

The supported rust targets are:

- x86_64-unknown-linux-gnu
- x86_64-pc-windows-gnu

Current versions are:

- [Rustup](https://rustup.rs/): 1.26.0
- [Rust](https://www.rust-lang.org/): 1.74.1
- [Cargo](https://github.com/rust-lang/cargo): 1.74.1
- [Godot Mono](https://godotengine.org/): 4.2
- [Godot-Rust](https://github.com/godot-rust): `git`
- [.NET SDK](https://dotnet.microsoft.com/): 8.0

Web/Mobile versions are **not** a priority at the moment as both Godot 4.2 C# has no support for both, nor Godot Rust.

### Languages Structure

Idealy, every entity will have a rust implementation.

1. Simple behaviour is implemented in GDScript;
2. Heavy computational scripts/functions can be implemented first in GDScript then later ported to C#
3. Nodes and game objects can be first implemented in GDScript as scenes, then later ported to Rust

### Future Targets

Add some sort of modding API for the game that let modders create new items, buildings and creatures.

Also, Lua support as an embed in-game programming language for building computers and that kind of stuff may happen.

### Present Targets (AKA TODO List)

- [ ] Living
  - [x] 8-directional normalized movement
  - [x] Sprint
- [ ] Player : Living
  - [ ] Interaction
    - [ ] Interaction radius around the player
    - [ ] Interacts with the object beneath the mouse pointer if there's any, otherwise interacts with the closest object
  - [ ] Inventory
- [ ] World
  - [ ] 2 layer world
    - [ ] Ground layer
    - [ ] Building layer
- [ ] Building
- [ ] UI
  - Player info
