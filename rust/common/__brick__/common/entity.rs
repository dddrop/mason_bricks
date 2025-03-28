pub trait Entity {
    type ID;
    fn id(&self) -> &Self::ID;
}
