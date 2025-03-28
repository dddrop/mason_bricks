use uuid::Uuid;

use crate::common::{IDGenerator, UUIDv4, UUIDv4Generator, UUIDv7Generator};

pub trait EntityId {
    fn new(id: Uuid) -> Self;
    fn value(&self) -> &Uuid;
    fn generate() -> Self;
}

// MARK: - UUID v4
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct EntityIDv4(UUIDv4);

impl EntityId for EntityIDv4 {
    fn new(id: Uuid) -> Self {
        Self(id)
    }
    fn value(&self) -> &Uuid {
        &self.0
    }
    fn generate() -> Self {
        Self(UUIDv4Generator.generate())
    }
}

// MARK: - UUID v7
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct EntityIDv7(Uuid);

impl EntityId for EntityIDv7 {
    fn new(id: Uuid) -> Self {
        Self(id)
    }
    fn value(&self) -> &Uuid {
        &self.0
    }
    fn generate() -> Self {
        Self(UUIDv7Generator.generate())
    }
}
