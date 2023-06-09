void main(){
  print('Inicio del programa');

  httpGet('https://jmpt.edu.mx').then((value){print(value);}).catchError(
      (ex){
        print('Error 502: $ex');
      }
  );

  print('Fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed(Duration(seconds: 1), (){
    throw 'Error en la petición HTTP';
    //return 'Respuesta de la petición HTTP';
  });
}