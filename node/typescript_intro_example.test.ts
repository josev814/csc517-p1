// helpful vitest matching https://vitest.dev/api/expect.html
import { describe, it, expect } from "vitest";
import { stringMatches } from "./typescript_intro_example.ts";

// Port of spec/ruby_intro_example_spec.rb
describe("TypeScriptIntroMethods", () => {
  it("string matches", () => {
    expect(() => stringMatches(null, "hello")).toThrowError(TypeError);
    expect(() => stringMatches("hello", null)).toThrowError(TypeError);
    expect(stringMatches("hello", "hello")).toBeTruthy();
    expect(stringMatches("hello", "world")).toBeFalsy();
    expect(stringMatches("hello", "Hello")).toBeFalsy();
    expect(stringMatches("hellos", "Hello")).toBeFalsy();
    expect(stringMatches("hello", "hello world")).toBeFalsy();
  });
});