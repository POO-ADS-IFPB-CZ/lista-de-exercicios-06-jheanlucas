package Questao6;

import java.util.*;
import java.util.stream.*;

public class ExemplosStream {
    public static void main(String[] args) {

        List<Integer> numeros = Arrays.asList(3, -1, 7, -4, 0, 5, -2);
        List<Integer> positivos = numeros.stream()
                .filter(n -> n >= 0)
                .collect(Collectors.toList());
        System.out.println(positivos);

        List<String> nomes = Arrays.asList("Pedro", "Ana", "Paulo", "Maria", "Patricia");
        nomes.stream()
                .filter(s -> s.startsWith("P"))
                .forEach(System.out::println);

        String paragrafo = "o gato e o rato e o gato correu atrás do rato";
        Set<String> palavrasUnicas = Arrays.stream(paragrafo.split(" "))
                .collect(Collectors.toSet());
        System.out.println(palavrasUnicas);
    }
}
