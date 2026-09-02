//! Reusable building blocks for the template application.

/// Returns the greeting used by the template application.
///
/// # Examples
///
/// ```
/// use template_library::greeting;
///
/// assert_eq!(greeting(), "Hello from template-library!");
/// ```
#[must_use]
pub fn greeting() -> &'static str {
    "Hello from template-library!"
}

#[cfg(test)]
mod tests {
    use super::greeting;

    #[test]
    fn returns_the_template_greeting() {
        assert_eq!(greeting(), "Hello from template-library!");
    }
}
