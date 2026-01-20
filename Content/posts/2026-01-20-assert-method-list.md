Title: List of XCTest assertion methods
Date: 20126-01-20
Tags: Swift, iOS, Interview
Summary: One-line takeaway.

# List of XCTest assertion methods


---

Here is a **complete, clean, interview-ready list of XCTest assertion methods**, grouped logically, with **what they do and when to use them**.

This is exactly the list you should **know by heart** for unit testing in Swift.

---

# ✅ Boolean Assertions

Used to assert true/false conditions.

```swift

XCTAssertTrue(_ expression: Bool, _ message: String = "")
XCTAssertFalse(_ expression: Bool, _ message: String = "")

```

**Example:**

```swift

XCTAssertTrue(isLoggedIn, "User should be logged in")
XCTAssertFalse(hasError, "Error should be false")

```

---

# ✅ Nil / Optional Assertions

Used for optional values.

```swift
XCTAssertNil(_ expression: Any?, _ message: String = "")
XCTAssertNotNil(_ expression: Any?, _ message: String = "")
```

Example:

```swift
XCTAssertNotNil(user, "User must not be nil")
XCTAssertNil(error, "Error should be nil")
```

---

# ✅ Equality / Inequality Assertions

Used to compare values.

```swift
XCTAssertEqual<T: Equatable>(_ expression1: T, _ expression2: T, _ message: String = "")
XCTAssertNotEqual<T: Equatable>(_ expression1: T, _ expression2: T, _ message: String = "")
```

Example:

```swift
XCTAssertEqual(total, 100, "Total should be 100")
XCTAssertNotEqual(status, .failed)
```

---

# ✅ Identity Assertions (Reference Types)

Used to compare object identity (memory reference).

```swift
XCTAssertIdentical(_ expression1: AnyObject?, _ expression2: AnyObject?, _ message: String = "")
XCTAssertNotIdentical(_ expression1: AnyObject?, _ expression2: AnyObject?, _ message: String = "")
```

Example:

```swift
XCTAssertIdentical(obj1, obj2, "Both should reference same instance")
```

---

# ✅ Comparison Assertions (Comparable)

Used for numeric / comparable comparisons.

```swift
XCTAssertGreaterThan(_ a: T, _ b: T)
XCTAssertGreaterThanOrEqual(_ a: T, _ b: T)
XCTAssertLessThan(_ a: T, _ b: T)
XCTAssertLessThanOrEqual(_ a: T, _ b: T)
```

Example:

```swift
XCTAssertGreaterThan(score, 50)
XCTAssertLessThanOrEqual(age, 60)
```

---

# ✅ Error / Exception Assertions (VERY IMPORTANT)

Used to test throwing functions.

```swift
XCTAssertThrowsError(_ expression: @autoclosure () throws -> T, _ message: String = "", _ errorHandler: ((Error) -> Void)? = nil)

XCTAssertNoThrow(_ expression: @autoclosure () throws -> T, _ message: String = "")
```

Example:

```swift
XCTAssertThrowsError(try login(email: "bad", password: "123")) { error in
    XCTAssertEqual(error as? LoginError, .invalidEmail)
}

XCTAssertNoThrow(try login(email: "a@b.com", password: "123456"))
```

---

# ✅ Collection Assertions

Used for arrays, sets, dictionaries.

```swift
XCTAssertEqual(array.count, 3)
XCTAssertTrue(array.isEmpty)
XCTAssertFalse(array.contains(5))
```

There is **no special collection-only API** — use normal equality & boolean assertions.

---

# ✅ Unconditional Failure

Used to force a test failure.

```swift
XCTFail(_ message: String = "")
```

Example:

```swift
guard let user else {
    XCTFail("User must not be nil")
    return
}
```

---

# ✅ Type Checking Assertions

Used to check runtime types.

```swift
XCTAssertTrue(value is MyType)
XCTAssertFalse(value is WrongType)
```

Example:

```swift
XCTAssertTrue(error is LoginError)
```

---

# ✅ Floating-Point Accuracy Assertions

Used when comparing `Double` / `Float`.

```swift
XCTAssertEqual(_ a: Double, _ b: Double, accuracy: Double)
```

Example:

```swift
XCTAssertEqual(price, 9.99, accuracy: 0.01)
```

---

# ✅ Async Assertions (Expectations)

Used for async code.

```swift
let expectation = expectation(description: "Async task")
expectation.fulfill()
waitForExpectations(timeout: 1.0)
```

(You already moved past basics, but this completes the list.)

---

# 🧠 Quick Interview Cheat Sheet

| Category   | Assertions                                       |
| ---------- | ------------------------------------------------ |
| Boolean    | `XCTAssertTrue`, `XCTAssertFalse`                |
| Optional   | `XCTAssertNil`, `XCTAssertNotNil`                |
| Equality   | `XCTAssertEqual`, `XCTAssertNotEqual`            |
| Identity   | `XCTAssertIdentical`, `XCTAssertNotIdentical`    |
| Comparison | `XCTAssertGreaterThan`, `XCTAssertLessThan`, etc |
| Errors     | `XCTAssertThrowsError`, `XCTAssertNoThrow`       |
| Failure    | `XCTFail`                                        |

---

# 🎯 Golden Rule (Memorize This)

> **Assertions do not throw — they abort the test.
> Use them to express intent, not control flow.**

---




