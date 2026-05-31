package Questao4;

import java.util.HashSet;
import java.util.Set;

public class SistemaUsuarios {
    private Set<Usuario> usuarios = new HashSet<>();

    public void inserir(Usuario u) {
        boolean inserido = usuarios.add(u);
        if (!inserido) {
            System.out.println("Erro: já existe um usuário com o e-mail " + u.getEmail());
        } else {
            System.out.println("Usuário cadastrado com sucesso!");
        }
    }

    public void listar() {
        if (usuarios.isEmpty()) {
            System.out.println("Nenhum usuário cadastrado.");
            return;
        }
        usuarios.forEach(System.out::println);
    }

    public void remover(String email) {
        boolean removido = usuarios.removeIf(u -> u.getEmail().equals(email));
        if (removido) {
            System.out.println("Usuário removido com sucesso!");
        } else {
            System.out.println("Usuário não encontrado.");
        }
    }
}
