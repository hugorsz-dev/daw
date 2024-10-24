package menu;

import java.util.Scanner;

public class Menu {

	/*
	 * Herramienta de menú que muestre un título y opciones de un determinado programa, dando al usuario
	 * una variable en la que introducir el valor deseado.
	 * 
	 */
	
	// ----- ATRIBUTOS -----
	
	private String titulo; // El título del menú. 
	private String [] opciones; // Un array en el que se proyectarán las opciones. 

	
	// ----- MÉTODOS CONSTRUCTORES -----
	
	public Menu (String [] opciones) {
		
	this.opciones = opciones;
			
	}
	
	// ----- GETTERS y SETTERS -----

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String[] getOpciones() {
		return opciones;
	}

	public void setOpciones(String[] opciones) {
		this.opciones = opciones;
	}


	

	// ----- MÉTODOS ----- 
	
	public void mostrarMenu () {
		
			System.out.println ("- - "+titulo+" - -");
			
			for (int i=0; i<opciones.length; i++) {
				
				System.out.println ((i+1)+". "+opciones [i]+".");
				
			}
			
			System.out.println ("0. Salir del programa.");
			
		}
		
	public int eligeOpcion () {
		
		int eleccion=0;
		Scanner entrada = new Scanner (System.in);
		boolean valido = false;
		
		while (valido == false) {
			
			System.out.print ("Introduzca elección: ");
			eleccion = entrada.nextInt();
			
			if (eleccion >=0 && eleccion<= opciones.length  ) {
				
				valido = true;
				
			} else {System.out.println ("ERROR: Dato incorrecto. Inténtelo de nuevo."); }
			
		} 
		
		return eleccion;
		
	}





	
	
	
	
	
	
	
	
}
