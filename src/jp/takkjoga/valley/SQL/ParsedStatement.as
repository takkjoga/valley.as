package jp.takkjoga.valley.SQL
{

import jp.takkjoga.valley.util.token.Token;

public class ParsedStatement
{
    private var _token:Token;
    private static var _instance:ParsedStatement;

    public function ParsedStatement(token:Token, caller:Function = null):void
    {
        if (caller != ParsedStatement.getInstance) {
            throw new Error("use getInstance() method");
        }
        if (ParsedStatement._instance != null) {
            throw new Error("don't twice call");
        }
        this._token = token;
    }

    public static function getInstance(token:Token):ParsedStatement
    {
        if (ParsedStatement._instance == null) {
            ParsedStatement._instance = new ParsedStatement(token, arguments.callee);
        }
        return ParsedStatement._instance;
    }

    public function toString():String
    {
        var output:String = "";
        for (var i:int = 0; i < this._token.parsedList.length; i ++) {
            output += "<b>" + this._token.parsedList[i] + "</b> ";
        }
        return output;
    }
}
}
