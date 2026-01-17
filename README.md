# BasicSpringBootCalculator 

A basic calculator application built with Spring Boot that exposes simple arithmetic operations via RESTful APIs.

## Features

- Addition, subtraction, multiplication, and division operations
- Easy to run with a minimal Spring Boot setup

## Requirements

- Java 8 or higher
- Maven or Gradle

## Getting Started

### Clone the repository

```bash
git clone https://github.com/ChinmayRaj/BasicSpringBootCalculator.git
cd BasicSpringBootCalculator
```

### Build and Run

1. **Using Maven:**
    ```bash
    mvn spring-boot:run
    ```
2. **Or build the jar:**
    ```bash
    mvn clean package
    java -jar target/BasicSpringBootCalculator-0.0.1-SNAPSHOT.jar
    ```

### Endpoints

Assuming the main controller is mapped to `/api/calculator`:

| Operation   | Method | Endpoint           | Sample Request Body |                       
|-------------|--------|-------------------------------------------                                    
|     Add     |  POST  |     `/addition`    | `{ "a": 2, "b": 3 }`|                             
|   Subtract  |  POST  |     `/subtract`    | `{ "a": 5, "b": 2 }`|                             
|   Multiply  |  POST  |     `/multiply`    | `{ "a": 3, "b": 4 }`|                              
|   Divide    |  POST  |     `/divide`      | `{ "a": 10,"b": 2 }`|                               








*Feel free to improve this README by adding more setup steps, contributor guidelines, or deployment information!*
