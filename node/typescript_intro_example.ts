// =========================
// String Matching Function
// =========================

/**
 * Returns true when both arguments are the identical string (case-sensitive),
 * and false when they are strings with different values.
 *
 * Throws a TypeError when either argument is not a string (null, undefined,
 * number, etc.) - the TypeScript equivalent of Ruby's ArgumentError check.
 *
 * Port of `string_matches?` from ruby/ruby_intro_example.rb.
 */
export function stringMatches(a: unknown, b: unknown): boolean {
  if (a === null || a === undefined || typeof a !== "string") {
    throw new TypeError("First argument must be a string");
  }

  if (b === null || b === undefined || typeof b !== "string") {
    throw new TypeError("Second argument must be a string");
  }

  return a === b;
}