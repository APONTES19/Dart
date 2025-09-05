void main() {
  print("=== HIERARQUIA DE HERANÇA ===");
  int numero = 42;
  print("int herda de: num");
  print("num herda de: Object");
  print("int implements: Comparable<num>");
  print("Tipo atual: ${numero.runtimeType}");

  print("\n=== PROPRIEDADES BÁSICAS ===");

  // Propriedades fundamentais
  print("Valor: $numero");
  print("hashCode: ${numero.hashCode}");
  print("runtimeType: ${numero.runtimeType}");

  // Propriedades de verificação
  print("isEven (par): ${numero.isEven}");
  print("isOdd (ímpar): ${numero.isOdd}");
  print("isNegative: ${numero.isNegative}");
  print("isInfinite: ${numero.isInfinite}");
  print("isFinite: ${numero.isFinite}");
  print("isNaN: ${numero.isNaN}");

  // Teste com números negativos
  int negativo = -15;
  print("\nTeste com $negativo:");
  print("isNegative: ${negativo.isNegative}");
  print("isEven: ${negativo.isEven}");
  print("isOdd: ${negativo.isOdd}");

  print("\n=== MÉTODOS MATEMÁTICOS BÁSICOS ===");

  // Valor absoluto
  print("(-25).abs() = ${(-25).abs()}");
  print("25.abs() = ${25.abs()}");

  // Sinal
  print("(-10).sign = ${(-10).sign}");  // -1
  print("0.sign = ${0.sign}");          // 0
  print("10.sign = ${10.sign}");        // 1

  // Arredondamento (para int, não muda nada)
    double decimal = 3.7;

    print("Valor original: $decimal");
    print("round() - arredonda para o mais próximo: ${decimal.round()}");
    print("floor() - arredonda para baixo: ${decimal.floor()}");
    print("ceil() - arredonda para cima: ${decimal.ceil()}");
    print("truncate() - arredonda para baixo: ${decimal.truncate()}");

  print("\n=== OPERADORES ARITMÉTICOS ===");

  int a = 20;
  int b = 7;

  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");                    // Retorna double!
  print("$a ~/ $b = ${a ~/ b}");                  // Divisão inteira
  print("$a % $b = ${a % b}");                    // Módulo/resto
  print("$a.remainder($b) = ${a.remainder(b)}");  // Resto (diferente de %)

  // Diferença entre % e remainder
  print("\nDiferença % vs remainder com negativos:");
  print("(-20) % 7 = ${(-20) % 7}");              // 1
  print("(-20).remainder(7) = ${(-20).remainder(7)}"); // -6

  print("\n=== OPERADORES DE COMPARAÇÃO ===");

  int x = 10;
  int y = 20;

  print("$x == $y: ${x == y}");
  print("$x != $y: ${x != y}");
  print("$x < $y: ${x < y}");
  print("$x <= $y: ${x <= y}");
  print("$x > $y: ${x > y}");
  print("$x >= $y: ${x >= y}");

  // compareTo (da interface Comparable)
  print("$x.compareTo($y) = ${x.compareTo(y)}");  // -1 (menor)
  print("$y.compareTo($x) = ${y.compareTo(x)}");  // 1 (maior)
  print("$x.compareTo($x) = ${x.compareTo(x)}");  // 0 (igual)

  print("\n=== OPERADORES BITWISE ===");

  int bits1 = 12;  // 1100 em binário
  int bits2 = 10;  // 1010 em binário

  print("$bits1 em binário: ${bits1.toRadixString(2).padLeft(4, '0')}");
  print("$bits2 em binário: ${bits2.toRadixString(2).padLeft(4, '0')}");

  print("$bits1 & $bits2 = ${bits1 & bits2} (${(bits1 & bits2).toRadixString(2)})");    // AND
  print("$bits1 | $bits2 = ${bits1 | bits2} (${(bits1 | bits2).toRadixString(2)})");    // OR
  print("$bits1 ^ $bits2 = ${bits1 ^ bits2} (${(bits1 ^ bits2).toRadixString(2)})");    // XOR
  print("~$bits1 = ${~bits1}");                                                          // NOT
  print("$bits1 << 2 = ${bits1 << 2} (${(bits1 << 2).toRadixString(2)})");             // Shift left
  print("$bits1 >> 1 = ${bits1 >> 1} (${(bits1 >> 1).toRadixString(2)})");             // Shift right

  // Shift right sem sinal (zero-fill)
  print("$bits1 >>> 1 = ${bits1 >>> 1}");

  print("\n=== MÉTODOS DE CONVERSÃO ===");

  int valor = 255;

  // Para double
  print("$valor.toDouble() = ${valor.toDouble()} (${valor.toDouble().runtimeType})");

  // Para string
  print("$valor.toString() = '${valor.toString()}'");

  // Para string com base/radix
  print("$valor.toRadixString(2) = '${valor.toRadixString(2)}'");   // Binário
  print("$valor.toRadixString(8) = '${valor.toRadixString(8)}'");   // Octal
  print("$valor.toRadixString(16) = '${valor.toRadixString(16)}'"); // Hexadecimal
  print("$valor.toRadixString(36) = '${valor.toRadixString(36)}'"); // Base 36

  // toStringAsFixed (herdado de num, mas para int sempre sem decimais)
  print("$valor.toStringAsFixed(2) = '${valor.toStringAsFixed(2)}'");

  // toStringAsExponential
  print("$valor.toStringAsExponential() = '${valor.toStringAsExponential()}'");
  print("$valor.toStringAsExponential(2) = '${valor.toStringAsExponential(2)}'");

  // toStringAsPrecision
  print("$valor.toStringAsPrecision(3) = '${valor.toStringAsPrecision(3)}'");

  print("\n=== MÉTODOS ESTÁTICOS E CONSTRUTORES ===");

  // parse - Converter string para int
  try {
    int parsed1 = int.parse("123");
    print("int.parse('123') = $parsed1");

    int parsed2 = int.parse("FF", radix: 16);
    print("int.parse('FF', radix: 16) = $parsed2");

    int parsed3 = int.parse("1010", radix: 2);
    print("int.parse('1010', radix: 2) = $parsed3");

    // int parsed4 = int.parse("abc");  // Lançaria FormatException
  } catch (e) {
    print("Erro ao fazer parse: $e");
  }

  // tryParse - Parse seguro (retorna null se falhar)
  int? safe1 = int.tryParse("456");
  int? safe2 = int.tryParse("abc");
  print("int.tryParse('456') = $safe1");
  print("int.tryParse('abc') = $safe2");

  // tryParse com radix
  int? hex = int.tryParse("A0", radix: 16);
  print("int.tryParse('A0', radix: 16) = $hex");

  // fromEnvironment - Valor do ambiente (compile-time)
  const int defaultPort = int.fromEnvironment('PORT', defaultValue: 8080);
  print("int.fromEnvironment('PORT', defaultValue: 8080) = $defaultPort");

  print("\n=== LIMITES E VALORES ESPECIAIS ===");

  // Valores limites (dependem da plataforma)
  print("Dart executando na web: ${identical(1, 1.0)}");

  // Em plataformas nativas (VM)
  try {
    print("Maior int positivo: pode variar por plataforma");
    print("Menor int negativo: pode variar por plataforma");

    // Testando limites
    int grande = 9223372036854775807;  // 2^63 - 1
    print("Número grande: $grande");
    print("Ainda é int: ${grande is int}");

    // Em JS/Web, ints são limitados a 53 bits de precisão
    int muitoGrande = 9007199254740991;  // 2^53 - 1 (limite JS)
    print("Limite JS: $muitoGrande");

  } catch (e) {
    print("Erro com números grandes: $e");
  }

  print("\n=== OPERAÇÕES AVANÇADAS ===");

  // clamp - Limitar valor entre min e max
  int testeClamp = 150;
  print("$testeClamp.clamp(0, 100) = ${testeClamp.clamp(0, 100)}");
  print("(-50).clamp(0, 100) = ${(-50).clamp(0, 100)}");
  print("50.clamp(0, 100) = ${50.clamp(0, 100)}");

  // gcd - Maior divisor comum (se disponível)
  try {
    int gcd = 48.gcd(18);
    print("48.gcd(18) = $gcd");
  } catch (e) {
    print("gcd pode não estar disponível em todas as versões");
  }

  print("\n=== INCREMENTO E DECREMENTO ===");

  int contador = 5;
  print("Valor inicial: $contador");

  // Pré-incremento
  print("++contador = ${++contador}");  // 6
  print("Valor após: $contador");       // 6

  // Pós-incremento
  print("contador++ = ${contador++}");  // 6 (retorna valor anterior)
  print("Valor após: $contador");       // 7

  // Pré-decremento
  print("--contador = ${--contador}");  // 6
  print("Valor após: $contador");       // 6

  // Pós-decremento
  print("contador-- = ${contador--}");  // 6 (retorna valor anterior)
  print("Valor após: $contador");       // 5

  print("\n=== OPERADORES DE ATRIBUIÇÃO COMPOSTOS ===");

  int teste = 10;
  print("Valor inicial: $teste");

  teste += 5;
  print("Após +=5: $teste");    // 15

  teste -= 3;
  print("Após -=3: $teste");    // 12

  teste *= 2;
  print("Após *=2: $teste");    // 24

  teste ~/= 3;
  print("Após ~/=3: $teste");   // 8 (divisão inteira)

  teste %= 3;
  print("Após %=3: $teste");    // 2

  // Operadores bitwise compostos
  teste |= 4;                   // teste = teste | 4
  print("Após |=4: $teste");    // 6

  teste &= 7;                   // teste = teste & 7
  print("Após &=7: $teste");    // 6

  teste ^= 3;                   // teste = teste ^ 3
  print("Após ^=3: $teste");    // 5

  teste <<= 1;                  // teste = teste << 1
  print("Após <<=1: $teste");   // 10

  teste >>= 1;                  // teste = teste >> 1
  print("Após >>=1: $teste");   // 5

  print("\n=== CARACTERÍSTICAS IMPORTANTES ===");

  print("✅ int em Dart:");
  print("• É um OBJETO (não primitivo)");
  print("• Tem métodos e propriedades");
  print("• Herda de num");
  print("• Implementa Comparable<num>");
  print("• Suporte a big integers (limitado por plataforma)");
  print("• Operações bitwise nativas");
  print("• Conversões automáticas limitadas");

  print("\n⚠️  Cuidados:");
  print("• Divisão (/) sempre retorna double");
  print("• Use ~/  para divisão inteira");
  print("• Overflow pode acontecer (dependendo da plataforma)");
  print("• Em JS/Web: precisão limitada a 53 bits");

  print("\n=== EXEMPLOS PRÁTICOS ===");

  // Verificar se é potência de 2
  bool isPowerOfTwo(int n) => n > 0 && (n & (n - 1)) == 0;
  print("8 é potência de 2: ${isPowerOfTwo(8)}");
  print("6 é potência de 2: ${isPowerOfTwo(6)}");

  // Contar bits setados
  int countBits(int n) {
    int count = 0;
    while (n > 0) {
      count += n & 1;
      n >>= 1;
    }
    return count;
  }
  print("Bits setados em 15: ${countBits(15)}");  // 4 bits

  // Trocar dois números sem variável auxiliar
  int swap1 = 10, swap2 = 20;
  print("Antes: swap1=$swap1, swap2=$swap2");
  swap1 ^= swap2;
  swap2 ^= swap1;
  swap1 ^= swap2;
  print("Depois: swap1=$swap1, swap2=$swap2");
}
