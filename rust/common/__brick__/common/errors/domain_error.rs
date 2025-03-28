#[derive(Debug, thiserror::Error)]
#[error("[{code}] validation error: {message}")]
pub enum DomainError {
    ValidationError { code: String, message: String },
}
