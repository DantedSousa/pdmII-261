// Exemplo de Jogo de Linguagem na Programação Orientada a Objetos

class Animal {
    void emitirSom() {
        System.out.println("Som genérico");
    }
}

class Cachorro extends Animal {
    void emitirSom() {
        System.out.println("Latido");
    }
}

public class Main {
    public static void main(String[] args) {
        Animal animal = new Animal();
        animal.emitirSom();

        Cachorro dog = new Cachorro();
        dog.emitirSom();
    }
}