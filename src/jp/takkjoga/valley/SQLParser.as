package jp.takkjoga.valley
{

import jp.takkjoga.valley.SQL.*;
import jp.takkjoga.valley.util.*;
import jp.takkjoga.valley.util.token.*;

public class SQLParser
{
    private var _database:String;
    private var _parseStatement:String;
    private var _token:Token;

    public function SQLParser(database:String, statement:String = ""):void
    {
        this._database = database;
        if (statement != "") {
            this.parse(statement);
        }
    }

    public function parse(statement:String = ""):void
    {
        if (statement != "") {
            this._parseStatement = statement;
        }
        if (this._parseStatement == "") {
            throw new Error("Empty Statement String");
        }

        this._token = Tokenizer.factory(this._database, this._parseStatement);
    }

    private function _analyze():String
    {
        return ParsedStatement.getInstance(this._token).toString();
    }

    private var _parsedStatement:String;
    public function get parsedStatement():String
    {
        this._parsedStatement = this._analyze();
        return this._parsedStatement;
    }
}
}
