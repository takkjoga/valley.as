package jp.takkjoga.valley.util.color
{

public class Other extends Colorize
        //implements IColorize
{
    public function Other():void
    {
    }

    override protected function _match(token:String):Boolean
    {
        trace(token + ": match in other");
        return true;
    }

    override protected function _process(token:String):String
    {
        trace(token + ": process in other");
        return token;
    }
}
}
