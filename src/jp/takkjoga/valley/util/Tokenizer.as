package jp.takkjoga.valley.util
{

import jp.takkjoga.valley.util.token.*;

public class Tokenizer
{
    private static var _instance:Token;

    public function Tokenizer():void
    {
        throw new Error("require factory method");
    }

    public static function factory(database:String, statement:String = ""):Token
    {
        if (Tokenizer._instance == null) {
            // TODO
            // database driver
            Tokenizer._instance = new Token(statement);
        }
        return Tokenizer._instance;
    }
}
}
