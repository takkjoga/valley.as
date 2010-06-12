package jp.takkjoga.valley.util
{

public class Tokenizer
{
    private var _parseStatement:String;
    private var _surroundLevel:int = 0;

    public function Tokenizer(statement:String = ""):void
    {
        this._parseStatement = statement;
        this._split();
    }

    private var _parsedList:Array;
    public function get parsedList():Array {
        return this._parsedList;
    }

    private function _split():void
    {
        var tokenList:Array = new Array();
        var part:String;
        while (part = this._split2()) {
            tokenList.push(part);
        }
        this._parsedList = tokenList;
    }

    private function _split2():String
    {
        var s:String = this._parseStatement;

        if (s == '' || !s) {
            return '';
        }

        var part:String;
        var matched:Array;
        if (s.match(/^\W/)) {
            matched = s.match(/^(\W)/);
        } else if (s.match(/^\w/)) {
            matched = s.match(/^\w+/);
        } else {
            throw new Error("part is empty");
        }
        part = matched[0];
        trace(part);

        this._parseStatement = s.substring(part.length);
        return part;
    }
}
}
