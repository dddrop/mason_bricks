use crate::common::entity::Entity;

#[async_trait::async_trait]
pub trait Repository<E: Entity> {
    type Error;

    async fn save(&self, entity: E) -> Result<(), Self::Error>;
    async fn find_by_id(&self, id: &E::ID) -> Result<Option<E>, Self::Error>;
    async fn find_all(&self) -> Result<Vec<E>, Self::Error>;
    async fn delete(&self, id: &E::ID) -> Result<bool, Self::Error>;
}
