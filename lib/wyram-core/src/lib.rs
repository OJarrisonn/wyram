use godot::prelude::*;

mod gameobj;

struct WyramCore;

#[gdextension]
unsafe impl ExtensionLibrary for WyramCore {}
