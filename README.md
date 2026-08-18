# Interleaving String Checker

## 📝 Descrição

Implementação de um algoritmo para verificar se uma string `s3` pode ser formada pelo intercalamento (interleaving) de duas strings `s1` e `s2`.

### Definição de Interleaving

Um intercalamento de duas strings `s` e `t` é uma configuração onde `s` e `t` são divididas em `n` e `m` partes respectivamente, tal que:

- `s = s1 + s2 + ... + sn`
- `t = t1 + t2 + ... + tm`
- `|n - m| <= 1`
- O intercalamento é `s1 + t1 + s2 + t2 + s3 + t3 + ...` ou `t1 + s1 + t2 + s2 + t3 + s3 + ...`

## 🚀 Solução

### Abordagem: Programação Dinâmica

O problema é resolvido usando programação dinâmica com uma matriz tridimensional.

### Estrutura de Dados
