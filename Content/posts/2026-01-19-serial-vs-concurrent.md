Title: Serial vs Concurrent Queues
Date: 2026-01-19
Tags: Swift, Concurrency, Interview
Summary: Clear explanation of serial and concurrent queues with examples.

# Serial vs Concurrent Queues

This note is part of my interview preparation.

---

## What is a Serial Queue?

A **serial queue** executes one task at a time, in FIFO order.

```swift
let serialQueue = DispatchQueue(label: "com.example.serial")

serialQueue.async {
    print("Task 1")
}

serialQueue.async {
    print("Task 2")
}

```

##Key points

* Only one task runs at a time
* Order is preserved
* Thread is not guaranteed to be the same


