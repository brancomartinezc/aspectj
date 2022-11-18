package aspectos;

public aspect Control {
	
	after():
		call(* *.start()){
			System.out.println("se inicio el timer");
	}
	
	after(char color):
		call(* *.actualizarFondo(char)) && args(color){
			if (color == 'o')
				System.out.println("se puso fondo gris oscuro a celda");
			if (color == 'r')
				System.out.println("se puso fondo rojo a celda");
			if (color == 'g')
				System.out.println("se puso fondo gris claro a celda");
	}
	
	after(int i, int j):
		call(* *.getNumeroEnCelda(int,int)) && args(i,j){
			if (i == 0 && j == 0)
				System.out.println("se obtuvo el numero de la celda 0,0");
	}

	
}
