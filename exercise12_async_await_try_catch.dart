Future<void> main() async {
  print('Inicio del programa');
  try{
    final value = await httpGet('https://jmpt.edu.mx');
    print('Éxito: $value');
  }on Exception catch(err){
    print('Tenemos una Excepción: $err');
  } catch(ex){
    print('¡Algo terrible pasó!: $ex');
  } finally{
    print('Fin del try/catch');
  }
  print('Fin del programa');
}

Future<String> httpGet(String url) async{

  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parámetros en la URL');

  //return 'Tenemos un valor de la petición';

  //return Future.delayed(Duration(seconds: 1), (){
   // throw 'Error en la petición HTTP';
    //return 'Respuesta de la petición HTTP';
 // });
}