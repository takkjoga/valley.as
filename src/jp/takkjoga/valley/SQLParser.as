package jp.takkjoga.valley
{

import jp.takkjoga.valley.SQL.*;
import jp.takkjoga.valley.util.*;

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

        var token:Tokenizer = new Tokenizer(this._parseStatement);
        this._parsedStatement = this._analyze(token.parsedList);
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
