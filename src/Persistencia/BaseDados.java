package Persistencia;
import java.util.ArrayList;

import Modelo.Autor;
import Modelo.Livro; 

public class BaseDados {
public static ArrayList<Livro> livros=new ArrayList<Livro>();
public static ArrayList<Autor>autores=new ArrayList<Autor>();
 public static void inserirLivro(String titulo, String editora,String autor) {
	  Livro livro=new Livro();
	  livro.setTitulo(titulo);
	  livro.setEditora(editora);
	  livro.setAutor(autor);
	
	  livros.add(livro);
	  
 }
 public static void inserirAutor(String nome, String endereco) {
	 Autor autor=new Autor();
	 autor.setNome(nome);
	 autor.setEndereco(endereco);
	autores.add(autor);
 }
 
 public static ArrayList<Livro>exibirLivros(){
	 return livros;
 }
 public static ArrayList<Autor>exibirAutores(){
	 return autores;
 }
 public static Livro getLivro(int pos) {
	 return livros.get(pos);
 }
 public static Autor getAutor(int pos) {
	    return autores.get(pos);
 }
 
 public static void atualizacaoLivro(int pos,String titulo,String editora,String autor) {
	     livros.get(pos).setTitulo(titulo);
	     livros.get(pos).setEditora(editora);
	     livros.get(pos).setAutor(autor);
 }
public static void atualizacaoAutor(int pos,String nome, String endereco) {
	          autores.get(pos).setNome(nome);
	          autores.get(pos).setEndereco(endereco);
}
 public static void exclusaoLivro(int pos){
	  livros.remove(pos);
 }
 public static void exclusaoAutor(int pos) {
	  autores.remove(pos);
 }
}
