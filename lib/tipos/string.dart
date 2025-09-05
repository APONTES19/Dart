void main() {
  print("=== HIERARQUIA DE HERANÇA ===");
  String texto = "Dart Programming";
  print("String herda de: ${texto.runtimeType}");
  print("String implements: Comparable<String>, Pattern");
  print("String extends: Object");

  print("\n=== PROPRIEDADES BÁSICAS ===");

  // length - Comprimento da string
  print("'$texto'.length = ${texto.length}");

  // isEmpty / isNotEmpty - Verificar se está vazia
  String vazio = "";
  print("'$vazio'.isEmpty = ${vazio.isEmpty}");
  print("'$texto'.isNotEmpty = ${texto.isNotEmpty}");

  // hashCode - Código hash
  print("'$texto'.hashCode = ${texto.hashCode}");

  // runtimeType - Tipo em runtime
  print("'$texto'.runtimeType = ${texto.runtimeType}");

  print("\n=== MÉTODOS DE ACESSO E NAVEGAÇÃO ===");

  // [] operator - Acessar caractere por índice
  print("'$texto'[0] = ${texto[0]}");
  print("'$texto'[5] = ${texto[5]}");

  // codeUnitAt - Código UTF-16 do caractere
  print("'$texto'.codeUnitAt(0) = ${texto.codeUnitAt(0)}");

  // codeUnits - Lista de todos os códigos UTF-16
  print("'ABC'.codeUnits = ${'ABC'.codeUnits}");

  // runes - Pontos de código Unicode
  String emoji = "👋🌟";
  print("'$emoji'.runes = ${emoji.runes.toList()}");

  print("\n=== MÉTODOS DE BUSCA ===");

  // contains - Verifica se contém substring
  print("'$texto'.contains('Dart') = ${texto.contains('Dart')}");
  print("'$texto'.contains('dart') = ${texto.contains('dart')}"); // Case sensitive

  // startsWith - Verifica se começa com
  print("'$texto'.startsWith('Dart') = ${texto.startsWith('Dart')}");

  // endsWith - Verifica se termina com
  print("'$texto'.endsWith('ing') = ${texto.endsWith('ing')}");

  // indexOf - Primeira ocorrência
  print("'$texto'.indexOf('r') = ${texto.indexOf('r')}");
  print("'$texto'.indexOf('x') = ${texto.indexOf('x')}"); // -1 se não encontrar

  // lastIndexOf - Última ocorrência
  String repetido = "banana";
  print("'$repetido'.lastIndexOf('a') = ${repetido.lastIndexOf('a')}");

  // indexOf com posição inicial
  print("'$repetido'.indexOf('a', 2) = ${repetido.indexOf('a', 2)}");

  print("\n=== MÉTODOS DE EXTRAÇÃO ===");

  // substring - Extrair parte da string
  print("'$texto'.substring(5) = ${texto.substring(5)}");
  print("'$texto'.substring(0, 4) = ${texto.substring(0, 4)}");

  // split - Dividir string em lista
  String frase = "maçã,banana,uva";
  print("'$frase'.split(',') = ${frase.split(',')}");

  // splitMapJoin - Dividir, mapear e juntar
  String numeros = "1-2-3";
  String resultado = numeros.splitMapJoin('-',
    onMatch: (m) => '+',
    onNonMatch: (s) => s
  );
  print("'$numeros' com splitMapJoin = $resultado");

  print("\n=== MÉTODOS DE TRANSFORMAÇÃO ===");

  // toLowerCase / toUpperCase
  print("'$texto'.toLowerCase() = ${texto.toLowerCase()}");
  print("'$texto'.toUpperCase() = ${texto.toUpperCase()}");

  // trim, trimLeft, trimRight - Remover espaços
  String comEspacos = "  Dart  ";
  print("'$comEspacos'.trim() = '${comEspacos.trim()}'");
  print("'$comEspacos'.trimLeft() = '${comEspacos.trimLeft()}'");
  print("'$comEspacos'.trimRight() = '${comEspacos.trimRight()}'");

  // padLeft / padRight - Adicionar padding
  String curto = "Hi";
  print("'$curto'.padLeft(5, '*') = ${curto.padLeft(5, '*')}");
  print("'$curto'.padRight(5, '-') = ${curto.padRight(5, '-')}");

  // replaceAll - Substituir todas as ocorrências
  print("'$repetido'.replaceAll('a', 'o') = ${repetido.replaceAll('a', 'o')}");

  // replaceFirst - Substituir primeira ocorrência
  print("'$repetido'.replaceFirst('a', 'X') = ${repetido.replaceFirst('a', 'X')}");

  // replaceFirstMapped - Substituir primeira com função
  String resultado2 = repetido.replaceFirstMapped('a', (match) => match.group(0)!.toUpperCase());
  print("'$repetido' replaceFirstMapped = $resultado2");

  // replaceAllMapped - Substituir todas com função
  String resultado3 = "hello world".replaceAllMapped('l', (match) => match.group(0)!.toUpperCase());
  print("'hello world' replaceAllMapped = $resultado3");

  // replaceRange - Substituir intervalo
  print("'$texto'.replaceRange(5, 16, 'Language') = ${texto.replaceRange(5, 16, 'Language')}");

  print("\n=== MÉTODOS DE COMPARAÇÃO ===");

  // == operator - Igualdade
  print("'Dart' == 'Dart' = ${'Dart' == 'Dart'}");
  print("'Dart' == 'dart' = ${'Dart' == 'dart'}");

  // compareTo - Comparação lexicográfica (Comparable interface)
  print("'apple'.compareTo('banana') = ${'apple'.compareTo('banana')}"); // < 0
  print("'banana'.compareTo('apple') = ${'banana'.compareTo('apple')}"); // > 0
  print("'apple'.compareTo('apple') = ${'apple'.compareTo('apple')}");   // = 0

  print("\n=== MÉTODOS DE CONVERSÃO ===");

  // toString - Conversão para string (já é string!)
  print("'$texto'.toString() = ${texto.toString()}");

  // toList - Não existe diretamente, mas:
  print("'$texto'.split('') = ${texto.split('')}"); // Char por char

  // codeUnits para lista de códigos
  print("'Hi'.codeUnits.toList() = ${'Hi'.codeUnits.toList()}");

  print("\n=== MÉTODOS AVANÇADOS ===");

  // allMatches - Todas as correspondências como Pattern
  String padrao = "ana";
  Iterable<Match> matches = padrao.allMatches("banana");
  print("'$padrao'.allMatches('banana') = ${matches.map((m) => m.start).toList()}");

  // matchAsPrefix - Corresponde no início
  Match? match = padrao.matchAsPrefix("analise");
  print("'$padrao'.matchAsPrefix('analise') = ${match?.group(0)}");

  print("\n=== MÉTODOS ESTÁTICOS E CONSTRUTORES ===");

  // String.fromCharCode - Criar string de código
  String fromCode = String.fromCharCode(65);
  print("String.fromCharCode(65) = $fromCode"); // 'A'

  // String.fromCharCodes - Criar de lista de códigos
  String fromCodes = String.fromCharCodes([72, 101, 108, 108, 111]);
  print("String.fromCharCodes([72,101,108,108,111]) = $fromCodes"); // 'Hello'

  // String.fromEnvironment - Valor do ambiente (compile-time)
  const String? env = String.fromEnvironment('PATH');
  print("String.fromEnvironment('PATH') existe = ${env != null}");

  print("\n=== INTERPOLAÇÃO E CONCATENAÇÃO ===");

  // Interpolação com \$
  String nome = "João";
  int idade = 25;
  print("Interpolação: 'Olá, \$nome! Você tem \$idade anos.'");
  print("Resultado: 'Olá, $nome! Você tem $idade anos.'");

  // Concatenação com +
  print("'Hello' + ' ' + 'World' = ${'Hello' + ' ' + 'World'}");

  // Strings adjacentes (concatenação automática)
  String adjacente = "Primeira parte "
                    "Segunda parte "
                    "Terceira parte";
  print("Strings adjacentes: $adjacente");

  print("\n=== ESCAPE SEQUENCES ===");
  print("Escape sequences:");
  print(r"'\n' = quebra de linha");
  print(r"'\t' = tab");
  print(r"'\r' = carriage return");
  print(r"'\\' = barra invertida");
  print(r"'\'' = aspas simples");
  print(r'\"' + " = aspas duplas");
  print(r"'\$' = cifrão literal");

  // Raw strings (r"...")
  print("Raw string: ${r'C:\Users\nome\Documents'}");

  print("\n=== MULTI-LINE STRINGS ===");

  String multiline1 = """
  Esta é uma string
  com múltiplas
  linhas usando aspas triplas
  """;
  print("Multi-line: $multiline1");

  String multiline2 = '''
  Também funciona
  com aspas simples
  triplas
  ''';
  print("Multi-line simples: $multiline2");

  print("\n=== PERFORMANCE E IMUTABILIDADE ===");
  print("⚠️  IMPORTANTE: Strings em Dart são IMUTÁVEIS!");
  print("Cada operação cria uma NOVA string na memória.");
  print("Para múltiplas concatenações, use StringBuffer:");

  // StringBuffer para performance
  StringBuffer buffer = StringBuffer();
  buffer.write("Primeira ");
  buffer.write("Segunda ");
  buffer.write("Terceira");
  String resultado4 = buffer.toString();
  print("StringBuffer resultado: $resultado4");

  print("\n=== UNICODE E EMOJI SUPPORT ===");
  String unicode = "Olá 👋 Mundo 🌍";
  print("Unicode string: $unicode");
  print("Length (code units): ${unicode.length}");
  print("Runes length: ${unicode.runes.length}");
  print("Runes: ${unicode.runes.toList()}");
}
