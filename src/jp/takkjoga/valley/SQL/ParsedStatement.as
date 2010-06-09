package jp.takkjoga.valley.SQL
{
public class ParsedStatement
{
    private var _tokenList:Array;

    public function ParsedStatement(tokenList:Array):void
    {
        this._tokenList = tokenList;
    }

    public function toString():String
    {
        var output:String;
        for (var i:int = 0; i < this._tokenList.length; i ++) {
            output += "<b>" + this._tokenList[i] + "</b> ";
        }
        return output;
    }
}
}
