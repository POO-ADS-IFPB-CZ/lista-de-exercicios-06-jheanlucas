package Questao5;

import java.util.Stack;

public class Navegador {
    private Stack<String> historico = new Stack<>();

    public void acessar(String pagina) {
        historico.push(pagina);
        System.out.println("Acessando: " + pagina);
    }

    public void voltar() {
        if (historico.size() <= 1) {
            System.out.println("Não há página anterior.");
            return;
        }
        historico.pop();
        System.out.println("Voltando para: " + historico.peek());
    }

    public void paginaAtual() {
        if (historico.isEmpty()) {
            System.out.println("Nenhuma página acessada.");
            return;
        }
        System.out.println("Página atual: " + historico.peek());
    }
}
