use uuid::Uuid;

use crate::common::{UUIDv4, UUIDv7};

pub(crate) trait IDGenerator<T> {
    fn generate(&self) -> T;
}

// MARK: - v4
pub(crate) struct UUIDv4Generator;
impl IDGenerator<UUIDv4> for UUIDv4Generator {
    fn generate(&self) -> Uuid {
        Uuid::new_v4()
    }
}

// MARK: - v7
pub(crate) struct UUIDv7Generator;
impl IDGenerator<UUIDv7> for UUIDv7Generator {
    fn generate(&self) -> Uuid {
        Uuid::now_v7()
    }
}
