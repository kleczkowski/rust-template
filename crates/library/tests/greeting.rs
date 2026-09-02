//! Integration coverage for the library's public API.

use template_library::greeting;

#[test]
fn returns_the_template_greeting() {
    assert_eq!(greeting(), "Hello from template-library!");
}
