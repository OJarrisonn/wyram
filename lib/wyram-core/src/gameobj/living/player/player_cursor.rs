use godot::prelude::*;
use godot::engine::{Area2D, IArea2D};

#[derive(GodotClass)]
#[class(base=Area2D)]
struct PlayerCursor {
    range: f64,
    attackable_targets: Vec<Gd<Node2D>>,
    interactible_targets: Vec<Gd<Node2D>>,

    #[base]
    area: Base<Area2D>
}

#[godot_api]
impl IArea2D for PlayerCursor {
    fn init(area: Base<Area2D>) -> Self {


        Self {
            range: 250.0,
            attackable_targets: vec![],
            interactible_targets: vec![],

            area
        }
    }
}