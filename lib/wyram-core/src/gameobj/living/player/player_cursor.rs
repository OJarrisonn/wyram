use godot::prelude::*;
use godot::bind::GodotClass;
use godot::engine::{Area2D, IArea2D};

#[derive(GodotClass)]
#[class(base=Area2D)]
struct PlayerCursor {
    range: f64,
    //attackable_target: Vec<Box<dyn INode2D>>,
    //interactible_target: Vec<Box<dyn INode2D>>,
}

#[godot_api]
impl IArea2D for PlayerCursor {

}