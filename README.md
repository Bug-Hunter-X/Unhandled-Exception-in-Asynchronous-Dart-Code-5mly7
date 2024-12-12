# Unhandled Exception in Asynchronous Dart Code
This example demonstrates a common error in Dart: unhandled exceptions within asynchronous operations.  The `fetchData` function makes a network request.  If the request fails, an exception is thrown, but without proper handling higher up the call stack, the error is not visible and leads to unexpected behavior.

## How to Reproduce
1. Run the `bug.dart` file.
2. Simulate a network error (e.g., by making the API endpoint unavailable).
3. Observe that the error is printed but the program continues without explicitly indicating a failure.

## Solution
The solution, in `bugSolution.dart`, shows how to better manage exceptions using `try-catch` blocks and considering the potential for exceptions to propagate up the call stack.