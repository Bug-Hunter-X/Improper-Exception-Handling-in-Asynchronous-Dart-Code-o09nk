# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: improper exception handling.  The `fetchData` function attempts to fetch data from a remote API. While it includes a `try-catch` block, the exception handling is incomplete.

The `bug.dart` file contains the flawed code.  The `bugSolution.dart` file provides a more robust solution.

## Problem

The original code rethrows the exception using `rethrow;` without providing additional context or logging details that could aid in debugging.

## Solution

The improved code provides more informative error logging, allowing for better debugging and monitoring.