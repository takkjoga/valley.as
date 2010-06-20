package jp.takkjoga.valley.util
{

import jp.takkjoga.valley.util.color.*;

public class ColorizedStatement
{
    public function ColorizedStatement():void
    {
        throw new Error("require factory method");
    }

    public static function factory(token:String):String
    {
        var command:Colorize = new Command();
        command.setNext(new Key()).setNext(new Other());
        return command.putToken(token);
    }
}
}
