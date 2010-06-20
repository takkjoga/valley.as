package jp.takkjoga.valley.util.color
{

public class Key extends Colorize
        //implements IColorize
{
    public function Key():void
    {
    }

    override protected function _match(token:String):Boolean
    {
        if (token.match(/^(FROM|WHERE|GROUP|ORDER|BY)$/)) {
            trace(token + ": match in key");
            return true;
        }
        return false;
    }

    override protected function _process(token:String):String
    {
        trace(token + ": process in key");
        return '<b><font color="red">' + token + '</font></b>';
    }
}
}
