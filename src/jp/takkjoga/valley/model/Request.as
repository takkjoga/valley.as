package jp.takkjoga.valley.Model
{

import flash.net.*;
import jp.takkjoga.valley.Model.Response;

class Request {
    private var loader:URLLoader;
    private var gateway:String = 'http://localhost:8002/server.php';

    function Request(gateway:String) {
        loader = new URLLoader();
        loader.addEventListener(IOErrorEvent.IO_ERROR, onIOError);
        loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onSecurityError);
    }

    public function connect() {
        loader.addEventListener(Event.COMPLETE, response);

        var variables:URLVariables = new URLVariables();
        trace(statement.text);
        variables.q = statement.text;

        var request:URLRequest = new URLRequest(gateway);
        request.method = URLRequestMethod.GET;
        request.data = variables;

        try {
            loader.load(request);
        } catch (error:Error) {
            trace("connect failed");
        }
    }

    public function response(event:Event)
    {
        var response:Response = new Response(event);
        response.addEventListener();
    }
}
}
