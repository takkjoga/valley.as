package jp.takkjoga.valley.util.color
{

public class Command extends Colorize
        //implements IColorize
{
    public function Command():void
    {
    }

    override protected function _match(token:String):Boolean
    {
        if (token.match(/^(SELECT|INSERT|UPDATE|DELETE)$/)) {
            trace(token + ": match in command");
            return true;
        }
        return false;
    }

    override protected function _process(token:String):String
    {
        trace(token + ": process in command");
        return '<b><font color="black">' + token + '</font></b>';
    }
}
}
