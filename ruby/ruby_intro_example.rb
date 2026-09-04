# =========================
# String Matching Function
# =========================

def string_matches?(a, b)
  if a.nil? || not(a.is_a?(String))
    raise ArgumentError
  end

  if b.nil? || not(b.is_a?(String))
    raise ArgumentError
  end

  a == b
end
