pub trait Attackable {
    fn be_attacked(&mut self, damage: i64);
}