# Interleaving String Checker

## 📝 Description

Implementation of an algorithm to check if a string `s3` can be formed by the interleaving of two strings `s1` and `s2`.

### Definition of Interleaving

An interleaving of two strings `s` and `t` is a configuration where `s` and `t` are divided into `n` and `m` parts respectively, such that:

- `s = s1 + s2 + ... + sn`
- `t = t1 + t2 + ... + tm`
- `|n - m| <= 1`
- The interleaving is `s1 + t1 + s2 + t2 + s3 + t3 + ...` or `t1 + s1 + t2 + s2 + t3 + s3 + ...`

## 🚀 Solution

### Approach: Dynamic Programming

The problem is solved using dynamic programming with a three-dimensional matrix.

### Data Structure
