use std::fmt::Debug;

pub(crate) trait DomainEvent: Debug + Send + Sync {
    fn event_type(&self) -> &str;
    fn aggregate_id(&self) -> &str;
    fn occurred_at(&self) -> &chrono::DateTime<chrono::Utc>;
}
