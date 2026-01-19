Title: Serial vs Concurrent Queues
Date: 2026-01-19
Tags: Swift, Concurrency, Interview
Summary: Clear explanation of serial and concurrent queues with examples.

# Serial vs Concurrent Queues

This note is part of my interview preparation.

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

Key points

Only one task runs at a time

Order is preserved

Thread is NOT guaranteed to be the same

What is a Concurrent Queue?

A concurrent queue can execute multiple tasks simultaneously.

DispatchQueue.global().async {
    print("Task A")
}

DispatchQueue.global().async {
    print("Task B")
}

Key points

Tasks may run in parallel

Order of completion is NOT guaranteed

Execution depends on system scheduler

Interview Answer (Short)

Serial queues execute one task at a time, while concurrent queues allow multiple tasks to execute simultaneously. Serial queues guarantee order, concurrent queues optimize performance.

Personal Notes

Main queue is serial

Serial ≠ main thread

Concurrent ≠ parallel always




