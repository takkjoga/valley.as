package jp.takkjoga.valley.util.color
{

public class Colorize
{
    private var _next:Colorize;

    public function Colorize():void
    {
    }

    public function setNext(next:Colorize):Colorize
    {
        this._next = next;
        return next;
    }

    public final function putToken(token:String):String
    {
        if (this._match(token)) {
            return this._process(token);
        } else if (this._next != null) {
            this._next.putToken(token);
        } else {
            throw new Error("can't process");
        }
        return token;
    }

    protected function _match(token:String):Boolean
    {
        return true;
    }

    protected function _process(token:String):String
    {
        return token;
    }
}
}
