def is_interleave(s1, s2, s3)
  return false if s1.length + s2.length != s3.length

  # dp[i][j][k] onde i = índice em s1, j = índice em s2,
  # k = 0 se último caractere veio de s1, 1 se de s2, 2 se nenhum caractere foi usado ainda
  dp = Array.new(s1.length + 1) do
    Array.new(s2.length + 1) do
      Array.new(3, false)
    end
  end

  # Caso base: strings vazias
  dp[0][0][2] = true

  (0..s1.length).each do |i|
    (0..s2.length).each do |j|
      next if i == 0 && j == 0

      # Posição atual em s3
      pos = i + j

      # Tentar pegar de s1
      if i > 0 && s1[i-1] == s3[pos-1]
        # Pode pegar de s1 se ainda não pegamos de s1,
        # ou se podemos alternar para s1 (anterior veio de s2)
        dp[i][j][0] = dp[i-1][j][1] || dp[i-1][j][2] || dp[i-1][j][0]
      end

      # Tentar pegar de s2
      if j > 0 && s2[j-1] == s3[pos-1]
        # Pode pegar de s2 se ainda não pegamos de s2,
        # ou se podemos alternar para s2 (anterior veio de s1)
        dp[i][j][1] = dp[i][j-1][0] || dp[i][j-1][2] || dp[i][j-1][1]
      end
    end
  end

  # Verificar se podemos alcançar o estado final
  dp[s1.length][s2.length][0] ||
  dp[s1.length][s2.length][1] ||
  dp[s1.length][s2.length][2]
end

# Testes
puts is_interleave("aabcc", "dbbca", "aadbbcbcac")  # true
puts is_interleave("aabcc", "dbbca", "aadbbbaccc")  # false
puts is_interleave("", "", "")                        # true
