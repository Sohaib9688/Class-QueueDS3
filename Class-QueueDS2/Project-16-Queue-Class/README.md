# Project 16 – Queue Class (C++ | Templates | OOP)

A template-based Queue implementation in C++ built without using the STL.  
This project focuses on object-oriented design, composition, reusability, and clean architecture by leveraging a custom Doubly Linked List as the underlying data structure.

---

## 📌 Overview

Instead of relying on `std::queue`, this project implements a custom Queue to better understand:

- Internal behavior of data structures
- Abstraction and encapsulation
- Composition over inheritance
- Writing reusable and maintainable code

The Queue is built on top of a previously implemented **Doubly Linked List**, using composition to avoid code duplication and maintain separation of concerns.

---

## 🧱 Architecture & Design

- The Queue **does not inherit** from the Doubly Linked List.
- It **contains** a Doubly Linked List object internally.
- All list operations remain hidden from external users.
- The public interface exposes only Queue-related behavior.

This ensures:
- Clear abstraction
- Clean public API
- Flexible internal implementation
- Easy future extensions

---

## ⚙️ Core Operations

- `Push(T item)`
- `Pop()`
- `Front()`
- `Back()`
- `Size()`
- `IsEmpty()`
- `Print()`

---

## ➕ Extensions (Phase 2)

Additional functionality added through composition:

- `GetItem(int index)`
- `Reverse()`
- `UpdateItem(int index, T value)`
- `InsertAfter(int index, T value)`
- `InsertAtFront(T value)`
- `InsertAtBack(T value)`
- `Clear()`

All extensions reuse existing Doubly Linked List logic without rewriting algorithms.

---

## 🧠 Key Concepts Demonstrated

- Templates for generic programming
- Object-Oriented Programming (OOP)
- Composition vs Inheritance
- Encapsulation and abstraction
- Code reusability
- Separation of responsibilities
- Scalable design thinking

---

## 🚀 Why This Project Matters

This project is not about replacing STL.  
It is about understanding how data structures are built and how clean architecture makes extending functionality simple and efficient.

When the foundation is designed correctly:
- Adding features becomes trivial
- Code duplication disappears
- Maintenance becomes easier
- Systems scale naturally

---

## 🎓 Learning Platform & Roadmap

This project is part of my structured learning journey through:

**Programming Advices Platform**  
Instructor: **Dr. Mohammed Abu-Hadhoud**

Roadmap Stage:
- Foundations of C++
- Object-Oriented Programming (OOP)
- Data Structures Implementation
- Building reusable components
- Applying composition in real projects

The focus of this roadmap is not only learning syntax, but mastering design thinking, abstraction, and scalable architecture.

---

## 🛠️ Technologies

- C++
- Templates
- Custom Doubly Linked List
- Object-Oriented Design Principles

---

## 📂 Related Project

This Queue implementation is built on top of:

- **Project 15 – Doubly Linked List (C++)**

---

Clean structure. Reusable components. Scalable design.
