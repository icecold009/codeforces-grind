# Algorithm Patterns

- List and explain common algorithmic patterns.

## String Compression / Abbreviation

When a word exceeds a length threshold, abbreviate as: **first char + (length − 2) + last char**.

- **Example**: `localization` → `l10n`, `internationalization` → `i18n`
- **Problems**: [71A - Way Too Long Words](https://codeforces.com/problemset/problem/71/A)

## Simple Counting with Conditions

Count how many items satisfy a small condition, often by:

- Reading `n` (number of test cases or problems)
- Looping `n` times
- Updating a counter when a condition is true

- **Example**: Team agrees on a problem if **at least two out of three** members are sure.
- **Problems**: [231A - Team](https://codeforces.com/problemset/problem/231/A)
