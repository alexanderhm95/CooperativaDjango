<?php
namespace App\Http\Controllers;
use App\Models\Cliente;
use Illuminate\Http\Request;
use App\Http\Helper\ResponseBuilder;
use DB;

class ClienteController extends Controller
{
    
    public function __construct()
    {
        //
    }

    public function allSinRestricciones(Request $request)
    {
        //cliente = Cliente.objects.all();
        $cliente = Cliente::all();
        $status = true;
        $info = 'Clients List';

        return ResponseBuilder::result($status, $info, $cliente);
    }
    
    public function allJson(Request $request){
        if($request->isJson()){
            $cliente = Cliente::all();
            $status = true;
            $info = "Clients List";
            return ResponseBuilder::result($status,$info,$cliente);
        }
        $status = false;
        $info = "Anauthorized";
        //return ResponseBuilder::result($status,$info);
        return response()->json(['error'=>'Unauthorized'],401,[]);

    }

    public function getCliente(Request $request, $cedula){
        if($request->isJson()){
            $cliente = Cliente::where('cedula', $cedula)->first();
            if(!empty($cliente)){ //que no este vacio
               $status = true;
               $info = "Client in here" ;
               return ResponseBuilder::result($status,$info,$cliente);
            }else{
               $status = false;
               $info = "Client doesn't exist" ;
               return ResponseBuilder::result($status,$info);
            }
        }
        $status = false;
        $info = "Error: Anauthorized";
        return ResponseBuilder::result($status,$info);
    }

    public function create(Request $request)
    {
        if ($request->isJson()) {
            $data = $request->json()->all();
            $cliente = Cliente::create([
                'cedula' => $data['cedula'],
                'nombres' => $data['nombres'],
                'apellidos' => $data['apellidos'],
                'genero' => $data['genero'],
                "estadoCivil" => $data['estadoCivil'],
                "correo" => $data['correo'],
                "telefono" => $data['telefono'],
                "celular" => $data['celular'],
                "direccion" => $data['direccion'],
                "date_created" => $data['date_created'],
            ]);
            $status = true;
            $info = "Cliente creado con exito";
            return ResponseBuilder::result($status, $info);
        }
        return response()->json(['error' => 'Unauthorized'], 401, []);
    }


}
