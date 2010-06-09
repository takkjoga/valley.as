package jp.takkjoga.valley
{

import jp.takkjoga.valley.SQL.*;

public class SQLParser
{
    private var _parseStatement:String;

    public function SQLParser(statement:String = ""):void
    {
        this._parseStatement = statement;
    }

    public function parse(statement:String = ""):void
    {
        if (statement != "") {
            this._parseStatement = statement;
        }
        if (this._parseStatement == "") {
            throw new Error("Empty Statement String");
        }
        var tokenList:Array = this._split(this._parseStatement);
        this._parsedStatement = this._analyze(tokenList);
    }

    private function _split(statement:String):Array
    {
        var tokenList:Array = new Array();
        //statement = statement.replace(/ /g, "");
        var part:String;
        while (part = this._split2(statement)) {
            trace(statement.length);
            tokenList.push(part);
            statement = statement.substring(part.length);
        }
        return tokenList;
    }

    private function _split2(statement:String):String
    {
        if (statement == '' || !statement) {
            return '';
        }
        return statement;
    }

    private function _analyze(tokenList:Array):String
    {
        return new ParsedStatement(tokenList).toString();
    }

    private var _parsedStatement:String;
    public function get parsedStatement():String
    {
        return this._parsedStatement;
    }
}
}
